import 'package:dyn_mouse_scroll/dyn_mouse_scroll.dart';
import 'package:flutter/material.dart';

typedef OnBottom = Future<void> Function();

class AutoScaleGridView extends StatefulWidget {
  final List<Widget> children;
  final Size itemSize;
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final EdgeInsetsGeometry padding;
  final OnBottom? onBottom;

  const AutoScaleGridView({
    super.key,
    required this.itemSize,
    this.mainAxisSpacing = 8.0,
    this.crossAxisSpacing = 8.0,
    this.padding = const EdgeInsets.all(8.0),
    required this.children,
    this.onBottom,
  });

  @override
  State<AutoScaleGridView> createState() => _AutoScaleGridViewState();
}

class _AutoScaleGridViewState extends State<AutoScaleGridView> {
  late ScrollController _scrollController;
  bool _isFetching = false;
  late Function() _listener;

  void _addListener() {
    _listener = () async {
      if (_isBottom && !_isFetching) {
        _isFetching = true;
        await widget.onBottom?.call();
        _isFetching = false;
      }
    };
    _scrollController.addListener(_listener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_listener);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final availableWidth =
              constraints.maxWidth - widget.padding.horizontal;
          final crossAxisCount = _calculateCrossAxisCount(availableWidth);
          if (crossAxisCount == 0) {
            return Container(
              padding: widget.padding,
              child: const Center(
                child: Text('可用空间不足'),
              ),
            );
          }

          return RepaintBoundary(
            child: DynMouseScroll(
              builder: (context, controller, physics) {
                _scrollController = controller;
                _addListener();
                return Padding(
                  padding: widget.padding,
                  child: _buildGrid(crossAxisCount, availableWidth, physics),
                );
              },
            ),
          );
        },
      ),
    );
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= maxScroll - 2 * widget.itemSize.height;
  }

  int _calculateCrossAxisCount(double availableWidth) {
    if (availableWidth < widget.itemSize.width) {
      return 0;
    }
    int count = 1;
    double usedWidth = widget.itemSize.width;
    while (usedWidth + widget.crossAxisSpacing + widget.itemSize.width <=
        availableWidth) {
      count++;
      usedWidth += widget.crossAxisSpacing + widget.itemSize.width;
    }

    return count;
  }

  Widget _buildGrid(
    int crossAxisCount,
    double availableWidth,
    ScrollPhysics physics,
  ) {
    if (widget.children.isEmpty) {
      return const SizedBox.shrink();
    }
    final totalItemWidth =
        crossAxisCount * widget.itemSize.width +
        (crossAxisCount - 1) * widget.crossAxisSpacing;
    final horizontalOffset = (availableWidth - totalItemWidth) / 2;
    final rowCount = (widget.children.length / crossAxisCount).ceil();

    return LayoutBuilder(
      builder: (context, constraint) {
        if (rowCount * widget.itemSize.height +
                (rowCount - 1) * widget.mainAxisSpacing <=
            constraint.maxHeight) {
          widget.onBottom?.call();
        }
        return ListView.builder(
          controller: _scrollController,
          padding: EdgeInsets.only(bottom: 100),
          itemCount: rowCount,
          physics: physics,
          itemBuilder: (context, rowIndex) {
            return Padding(
              padding: EdgeInsets.only(
                top: rowIndex > 0 ? widget.mainAxisSpacing : 0,
                left: horizontalOffset > 0 ? horizontalOffset : 0,
              ),
              child: _buildRow(rowIndex, crossAxisCount),
            );
          },
        );
      },
    );
  }

  Widget _buildRow(int rowIndex, int crossAxisCount) {
    final startIndex = rowIndex * crossAxisCount;
    final endIndex = (startIndex + crossAxisCount).clamp(
      0,
      widget.children.length,
    );

    final rowWidget = RepaintBoundary(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: List.generate(crossAxisCount, (columnIndex) {
          final childIndex = startIndex + columnIndex;

          if (childIndex >= endIndex) {
            return SizedBox(
              width: widget.itemSize.width,
              height: widget.itemSize.height,
            );
          }
          final itemWidget = RepaintBoundary(
            child: Container(
              margin: EdgeInsets.only(
                right: columnIndex < crossAxisCount - 1
                    ? widget.crossAxisSpacing
                    : 0,
              ),
              width: widget.itemSize.width,
              height: widget.itemSize.height,
              child: widget.children[childIndex],
            ),
          );
          return itemWidget;
        }),
      ),
    );

    return rowWidget;
  }
}

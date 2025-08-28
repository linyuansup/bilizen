import 'package:flutter/material.dart';

class VideoInfoArea extends StatelessWidget {
  const VideoInfoArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _BasicInfoArea(),
        Expanded(child: _RecommendArea()),
      ],
    );
  }
}

class _RecommendArea extends StatelessWidget {
  const _RecommendArea();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class _BasicInfoArea extends StatelessWidget {
  const _BasicInfoArea();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

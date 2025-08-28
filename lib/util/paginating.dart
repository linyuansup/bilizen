typedef PageFetcher<T> = Future<List<T>> Function(int page, int pageSize);

class Paginating<T> {
  static const int defaultPageSize = 20;
  static const int minPageNumber = 1;
  final PageFetcher<T> fetcher;
  final int pageSize;
  int _currentPage = minPageNumber;
  bool _hasMore = true;
  final Map<int, List<T>> _pageCache = {};
  int _maxLoadedPage = 0;

  Paginating({
    required this.fetcher,
    this.pageSize = defaultPageSize,
  });

  List<T> get items {
    final allItems = <T>[];
    for (var i = minPageNumber; i <= _maxLoadedPage; i++) {
      if (_pageCache.containsKey(i)) {
        allItems.addAll(_pageCache[i]!);
      }
    }
    return List.unmodifiable(allItems);
  }

  bool get hasMore => _hasMore;
  int get currentPage => _currentPage;

  void _updateCacheAndState(int page, List<T> items) {
    if (items.isNotEmpty) {
      _pageCache[page] = items;
      _maxLoadedPage = _maxLoadedPage < page ? page : _maxLoadedPage;
      _hasMore = items.length >= pageSize;
    } else {
      _hasMore = false;
    }
  }

  Future<List<T>> getPage(int page) async {
    if (_pageCache.containsKey(page)) {
      return List.unmodifiable(_pageCache[page]!);
    }
    final items = await fetcher(page, pageSize);
    _updateCacheAndState(page, items);
    return List.unmodifiable(items);
  }

  Future<void> refresh() async {
    _currentPage = minPageNumber;
    _maxLoadedPage = 0;
    _hasMore = true;
    _pageCache.clear();
    await loadMore();
  }

  Future<void> loadMore() async {
    if (!_hasMore) return;
    try {
      final nextPage = _maxLoadedPage + 1;
      final items = await getPage(nextPage);
      if (items.isNotEmpty) {
        _currentPage = nextPage;
      }
    } catch (e) {
      rethrow;
    }
  }
}

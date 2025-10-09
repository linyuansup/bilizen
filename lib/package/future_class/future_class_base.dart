abstract class FutureClassBase {
  final Map<String, dynamic> _cache = {};
  bool isCached(String key) => _cache.containsKey(key);
  T? getCached<T>(String key) => _cache[key] as T?;
  void setCached<T>(String key, T value) {
    _cache[key] = value;
  }

  void clearCached(String key) {
    _cache.remove(key);
  }

  void clearAllCached() {
    _cache.clear();
  }
}

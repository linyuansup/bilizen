class FutureClass {
  const FutureClass();
}

const futureClass = FutureClass();

/// Annotation to mark a getter for lazy loading data
class FutureData {
  /// The name of the loader function that will be called to load the data
  final String loader;

  const FutureData({required this.loader});
}

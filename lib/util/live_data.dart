import 'dart:convert';
import 'dart:io';

class LiveData<T> {
  final String path;
  late T _instance;

  LiveData._({required this.path, required T instance}) {
    _instance = instance;
  }

  static Future<LiveData<T>> create<T>({
    required String path,
    required T defaultInstance,
  }) async {
    T instance;
    try {
      final file = File(path);
      if (await file.exists()) {
        final content = await file.readAsString();
        final json = jsonDecode(content);
        instance = json as T;
      } else {
        instance = defaultInstance;
        await _writeToFile(path, defaultInstance);
      }
    } catch (e) {
      instance = defaultInstance;
      await _writeToFile(path, defaultInstance);
    }
    return LiveData._(path: path, instance: instance);
  }

  T get instance => _instance;

  Future<void> setInstance(T value) async {
    _instance = value;
    await _writeToFile(path, value);
  }

  static Future<void> _writeToFile<T>(String path, T value) async {
    final file = File(path);
    await file.create(recursive: true);
    final content = jsonEncode(value);
    await file.writeAsString(content);
  }
}

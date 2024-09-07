abstract class Storage<T> {
  Future<T> get<T>(String key);
  List<T> getAll();
  void add(T value);
}

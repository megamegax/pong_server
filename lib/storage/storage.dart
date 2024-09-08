abstract class Storage<T> {
  T? get(String key);
  List<T> getAll();
  void add(T value);
  void update(T value);
}

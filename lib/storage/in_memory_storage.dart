import '../models/idable.dart';
import 'storage.dart';

class InMemoryStorage<T extends Idable> extends Storage<T> {
  Map<String, T> _items = {};
  @override
  T? get(String key) {
    return _items[key];
  }

  @override
  void add(T value) async {
    _items.putIfAbsent(value.id, () => value);
  }

  @override
  List<T> getAll() {
    return _items.entries.map((e) => e.value).toList();
  }

  @override
  void update(T value) {
    _items[value.id] = value;
  }
}

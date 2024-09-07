import 'package:server/storage/storage.dart';

class InMemoryStorage<T> extends Storage<T> {
  List<T> _items = [];
  @override
  Future<T> get<T>(String key) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  void add(T value) async {
    _items.add(value);
  }

  @override
  List<T> getAll() {
    return _items;
  }
}

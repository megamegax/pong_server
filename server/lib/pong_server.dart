import 'package:gazelle_core/gazelle_core.dart';
import 'package:models/models.dart';
import 'package:server/storage/in_memory_storage.dart';
import 'routes/rooms/rooms.dart';

    InMemoryStorage<Room> storage = InMemoryStorage();
Future<void> runApp(List<String> args) async {

  final app = GazelleApp(
    routes: [
      rooms,
    ],
    port: 3000,
    modelProvider: BackendModelProvider(),
  );

  await app.start(args: args);
}

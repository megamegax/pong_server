import 'package:gazelle_core/gazelle_core.dart';
import 'package:server/routes/rooms/rooms_post.dart';
import 'rooms_get.dart';

final rooms = GazelleRoute(
  name: "rooms",
).get(roomsGet).post(roomsPost);

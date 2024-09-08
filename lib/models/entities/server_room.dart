import 'package:dart_mappable/dart_mappable.dart';
import 'package:pong_server/models/idable.dart';

import 'server_player.dart';
part 'server_room.mapper.dart';

@MappableClass()
class ServerRoom extends Idable with ServerRoomMappable {
  @override
  final String id;
  late bool isFull;
  final String name;
  final String owner;
  final List<ServerPlayer> players;
  final bool gameStarted;
  final String gravityRule;
  ServerRoom(this.name, this.players, this.owner, this.id, this.gameStarted,
      this.gravityRule)
      : super(id: id) {
    isFull = players.length == 4;
  }
}

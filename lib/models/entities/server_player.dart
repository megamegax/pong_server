import 'package:dart_mappable/dart_mappable.dart';
part 'server_player.mapper.dart';

@MappableClass()
class ServerPlayer with ServerPlayerMappable {
  final String id;
  final String name;
  final String element;
  final String position;
  final int color;
  final int health;
  final bool isAI;

  ServerPlayer(
    this.id,
    this.name,
    this.element,
    this.position,
    this.color,
    this.health,
    this.isAI,
  );
}

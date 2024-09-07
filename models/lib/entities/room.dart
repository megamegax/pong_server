import 'package:models/entities/player.dart';

class Room {
  late bool isFull;
  final String name;
  final String owner;
  final List<Player> players;
  Room({required this.name, required this.players, required this.owner}) {
    isFull = players.length == 2;
  }
}

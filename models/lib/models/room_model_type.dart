import 'package:gazelle_serialization/gazelle_serialization.dart';
import 'package:models/models/player_model_type.dart';

import '../entities/room.dart';

class RoomModelType extends GazelleModelType<Room> {
  @override
  Room fromJson(Map<String, dynamic> json) {
    return Room(
      name: json["name"] as String,
      players: (json["players"] as List)
          .map((item) => PlayerModelType().fromJson(item))
          .toList(),
      owner: json["owner"] as String,
    );
  }

  @override
  Map<String, dynamic> toJson(Room value) {
    return {
      "isFull": value.isFull,
      "name": value.name,
      "owner": value.owner,
      "players":
          value.players.map((item) => PlayerModelType().toJson(item)).toList(),
    };
  }
}

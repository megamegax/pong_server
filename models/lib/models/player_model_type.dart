import 'package:gazelle_serialization/gazelle_serialization.dart';

import '../entities/player.dart';

class PlayerModelType extends GazelleModelType<Player> {
  @override
  Player fromJson(Map<String, dynamic> json) {
    return Player(
      name: json["name"] as String,
    );
  }

  @override
  Map<String, dynamic> toJson(Player value) {
    return {
      "name": value.name,
    };
  }
}

import 'package:gazelle_serialization/gazelle_serialization.dart';

import '../entities/player.dart';
import '../entities/room.dart';
import 'player_model_type.dart';
import 'room_model_type.dart';

class BackendModelProvider extends GazelleModelProvider {
  @override
  Map<Type, GazelleModelType> get modelTypes {
    return {
      Player: PlayerModelType(),
      Room: RoomModelType(),
    };
  }
}

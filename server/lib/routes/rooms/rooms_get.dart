import 'package:gazelle_core/gazelle_core.dart';
import 'package:models/entities/room.dart';
import 'package:server/pong_server.dart';

Future<GazelleResponse<List<Room>>> roomsGet(
  GazelleContext context,
  GazelleRequest request,
) async {
  final rooms = storage.getAll();
  return GazelleResponse(
      statusCode: GazelleHttpStatusCode.success.ok_200, body: rooms);
}

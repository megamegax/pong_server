import 'package:gazelle_core/gazelle_core.dart';
import 'package:models/entities/room.dart';
import 'package:server/pong_server.dart';

Future<GazelleResponse<void>> roomsPost(
  GazelleContext context,
  GazelleRequest<Room> request,
) async {
  final room = request.body;
  if (room != null) {
    storage.add(room);
    return GazelleResponse(statusCode: GazelleHttpStatusCode.success.ok_200);
  } else {
    return GazelleResponse(
        statusCode: GazelleHttpStatusCode.error.badRequest_400);
  }
}

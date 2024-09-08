import 'package:dart_frog/dart_frog.dart';
import 'package:pong_server/db.dart';

Response roomsGet(
  RequestContext context,
) {
  final rooms = storage.getAll();
  return Response(
      body: '{"lobbies":[${rooms.map((room) => room.toJson()).toList().join(",")}]}');
}

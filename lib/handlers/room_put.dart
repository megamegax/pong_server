import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:pong_server/db.dart';
import 'package:pong_server/models/entities/server_player.dart';
import 'package:pong_server/models/entities/server_room.dart';

Future<Response> roomPut(RequestContext context, String id) async {
  final roomId = id;
  print(await context.request.body());
  final updatedServerRoom =
      ServerRoomMapper.fromJson(await context.request.body());
  storage.update(updatedServerRoom);

  return Response(statusCode: HttpStatus.ok, body: updatedServerRoom.toJson());
}

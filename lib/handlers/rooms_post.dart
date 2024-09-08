import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:pong_server/db.dart';
import 'package:pong_server/models/entities/server_room.dart';

Future<Response> roomsPost(
  RequestContext context,
) async {
  final room = ServerRoomMapper.fromJson(await context.request.body());
  if (room != null) {
    storage.add(room);
    return Response(statusCode: HttpStatus.ok);
  } else {
    return Response(statusCode: HttpStatus.badRequest);
  }
}

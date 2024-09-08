import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:pong_server/db.dart';

Response roomGet(RequestContext context, String id) {
  final room = storage.get(id);
  if (room == null) {
    return Response(statusCode: HttpStatus.notFound);
  }
  return Response(body: room.toJson());
}

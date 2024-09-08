import 'package:dart_frog/dart_frog.dart';
import 'package:pong_server/handlers/room_get.dart';
import 'package:pong_server/handlers/room_put.dart';

Future<Response> onRequest(RequestContext context, String id) async {
  if (context.request.method == HttpMethod.get) {
    return roomGet(context, id);
  } else if (context.request.method == HttpMethod.put) {
    return roomPut(context, id);
  }
  return Response(body: 'This is a new route!');
}

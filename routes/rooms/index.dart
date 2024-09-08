import 'package:dart_frog/dart_frog.dart';
import 'package:pong_server/handlers/rooms_get.dart';
import 'package:pong_server/handlers/rooms_post.dart';

Future<Response> onRequest(RequestContext context) async {
  if (context.request.method == HttpMethod.get) {
    return roomsGet(context);
  } else if (context.request.method == HttpMethod.post) {
    return roomsPost(context);
  }
  return Response(body: 'This is a new route!');
}

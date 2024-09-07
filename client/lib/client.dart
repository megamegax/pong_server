import 'package:models/models.dart';
import 'package:gazelle_client/gazelle_client.dart';
export 'package:models/models.dart';
export 'package:gazelle_client/gazelle_client.dart'
    hide GazelleRouteClient, GazelleApiClient;

extension GazelleApiClientExtension on GazelleApiClient {
  HelloGazelleRoute get helloGazelle =>
      HelloGazelleRoute(this('hello_gazelle'));
}

class HelloGazelleRoute {
  final GazelleRouteClient _client;
  HelloGazelleRoute(this._client);
  Future<String> get({Map<String, dynamic>? queryParams}) =>
      _client.get<String>(queryParams: queryParams);
}

class Gazelle {
  static GazelleClient? _client;
  void init({String? baseUrl}) => _client = GazelleClient.init(
        baseUrl: baseUrl ?? "http://localhost:3000",
        modelProvider: BackendModelProvider(),
      );
  GazelleClient get client =>
      _client == null ? throw "Gazelle not configured!" : _client!;
}

final gazelle = Gazelle();

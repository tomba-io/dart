import 'enums.dart';
import 'client_stub.dart'
    if (dart.library.html) 'client_browser.dart'
    if (dart.library.io) 'client_io.dart';
import 'response.dart';

abstract class Client {
  late Map<String, String> config;
  late String _endPoint;

  String get endPoint => _endPoint;

  factory Client(
          {String endPoint = 'https://api.tomba.io/v1',
          bool selfSigned = false}) =>
      createClient(endPoint: endPoint, selfSigned: selfSigned);

  Client setSelfSigned({bool status = true});

  Client setEndpoint(String endPoint);

  /// Your Key
  Client setKey(value);

  /// Your Secret
  Client setSecret(value);

  Client addHeader(String key, String value);

  Future<Response> call(
    HttpMethod method, {
    String path = '',
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
    ResponseType? responseType,
  });
}

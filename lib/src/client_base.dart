import 'response.dart';
import 'client.dart';
import 'enums.dart';

abstract class ClientBase implements Client {
  /// Your Key
  ClientBase setKey(value);

  /// Your Secret
  ClientBase setSecret(value);

  ClientBase setSelfSigned({bool status = true});

  ClientBase setEndpoint(String endPoint);

  ClientBase addHeader(String key, String value);

  Future<Response> call(
    HttpMethod method, {
    String path = '',
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
    ResponseType? responseType,
  });
}

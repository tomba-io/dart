import 'response.dart';
import 'client.dart';
import 'enums.dart';

abstract class ClientBase implements Client {
  /// Your Key
  @override
  ClientBase setKey(String value);

  /// Your Secret
  @override
  ClientBase setSecret(String value);

  @override
  ClientBase setSelfSigned({bool status = true});

  @override
  ClientBase setEndpoint(String endPoint);

  @override
  ClientBase addHeader(String key, String value);

  @override
  Future<Response<dynamic>> call(
    HttpMethod method, {
    String path = '',
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
    ResponseType? responseType,
  });
}

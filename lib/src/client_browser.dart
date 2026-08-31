import 'package:http/http.dart' as http;
import 'package:http/browser_client.dart';
import 'client_mixin.dart';
import 'enums.dart';
import 'exception.dart';
import 'client_base.dart';
import 'response.dart';

ClientBase createClient({
  required String endPoint,
  required bool selfSigned,
}) =>
    ClientBrowser(endPoint: endPoint, selfSigned: selfSigned);

class ClientBrowser extends ClientBase with ClientMixin {
  ClientBrowser({
    String endPoint = 'https://api.tomba.io/v1',
    bool selfSigned = false,
  }) : _endPoint = endPoint {
    _httpClient = BrowserClient();
    _headers = {
      'content-type': 'application/json',
      'x-sdk-version': 'tomba:dart:v1.0.1',
    };

    config = {};

    assert(_endPoint.startsWith(RegExp('http://|https://')),
        'endPoint $_endPoint must start with \'http\'');
  }

  String _endPoint;
  Map<String, String>? _headers;
  @override
  late Map<String, String> config;
  late BrowserClient _httpClient;

  @override
  String get endPoint => _endPoint;

  /// Your Key
  @override
  ClientBrowser setKey(String value) {
    config['key'] = value;
    addHeader('X-Tomba-Key', value);
    return this;
  }

  /// Your Secret
  @override
  ClientBrowser setSecret(String value) {
    config['secret'] = value;
    addHeader('X-Tomba-Secret', value);
    return this;
  }

  @override
  ClientBrowser setSelfSigned({bool status = true}) {
    return this;
  }

  @override
  ClientBrowser setEndpoint(String endPoint) {
    _endPoint = endPoint;
    return this;
  }

  @override
  ClientBrowser addHeader(String key, String value) {
    _headers![key] = value;
    return this;
  }

  @override
  Future<Response<dynamic>> call(
    HttpMethod method, {
    String path = '',
    Map<String, String> headers = const {},
    Map<String, dynamic> params = const {},
    ResponseType? responseType,
  }) async {
    late http.Response res;
    final http.BaseRequest request = prepareRequest(
      method,
      uri: Uri.parse(_endPoint + path),
      headers: {..._headers!, ...headers},
      params: params,
    );
    try {
      final streamedResponse =
          await _httpClient.send(request).timeout(const Duration(seconds: 120));
      res = await toResponse(streamedResponse);

      return prepareResponse(res, responseType: responseType);
    } catch (e) {
      if (e is TombaException) {
        rethrow;
      }
      throw TombaException(e.toString());
    }
  }
}

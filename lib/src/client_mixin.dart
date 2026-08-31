import 'package:http/http.dart' as http;
import 'exception.dart';
import 'response.dart';
import 'dart:convert';
import 'enums.dart';

mixin ClientMixin {
  http.BaseRequest prepareRequest(
    HttpMethod method, {
    required Uri uri,
    required Map<String, String> headers,
    required Map<String, dynamic> params,
  }) {
    if (params.isNotEmpty) {
      params.removeWhere((key, value) => value == null);
    }

    http.BaseRequest request = http.Request(method.name(), uri);
    if (method == HttpMethod.get) {
      final encoded = <String, dynamic>{};
      if (params.isNotEmpty) {
        for (final key in params.keys) {
          if (params[key] is int || params[key] is double) {
            encoded[key] = params[key].toString();
          } else if (params[key] is List) {
            encoded['$key[]'] = params[key];
          } else {
            encoded[key] = params[key];
          }
        }
      }
      uri = Uri(
          fragment: uri.fragment,
          path: uri.path,
          host: uri.host,
          scheme: uri.scheme,
          queryParameters: encoded,
          port: uri.port);
      request = http.Request(method.name(), uri);
    } else {
      (request as http.Request).body = jsonEncode(params);
    }

    request.headers.addAll(headers);
    return request;
  }

  Response<dynamic> prepareResponse(http.Response res,
      {ResponseType? responseType}) {
    responseType ??= ResponseType.json;
    if (res.statusCode >= 400) {
      if ((res.headers['content-type'] ?? '').contains('application/json')) {
        final response = json.decode(res.body);
        throw TombaException(
          response['errors']['message'] as String?,
          res.statusCode,
          response,
        );
      } else {
        throw TombaException(res.body);
      }
    }
    dynamic data;
    if ((res.headers['content-type'] ?? '').contains('application/json')) {
      if (responseType == ResponseType.json) {
        data = json.decode(res.body);
      } else if (responseType == ResponseType.bytes) {
        data = res.bodyBytes;
      } else {
        data = res.body;
      }
    } else {
      if (responseType == ResponseType.bytes) {
        data = res.bodyBytes;
      } else {
        data = res.body;
      }
    }
    final rateLimit = RateLimit.fromHeaders(res.headers);
    return Response<dynamic>(data: data, rateLimit: rateLimit);
  }

  Future<http.Response> toResponse(
      http.StreamedResponse streamedResponse) async {
    if (streamedResponse.statusCode == 204) {
      return http.Response(
        '',
        streamedResponse.statusCode,
        headers: streamedResponse.headers.map((k, v) =>
            k.toLowerCase() == 'content-type'
                ? MapEntry(k, 'text/plain')
                : MapEntry(k, v)),
        request: streamedResponse.request,
        isRedirect: streamedResponse.isRedirect,
        persistentConnection: streamedResponse.persistentConnection,
        reasonPhrase: streamedResponse.reasonPhrase,
      );
    } else {
      return await http.Response.fromStream(streamedResponse);
    }
  }
}

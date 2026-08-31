part of '../tomba.dart';

/// Logs
///
/// Check your API request logs.
///
/// See [Logs API](https://docs.tomba.io/api/account#retrieve-api-logs)
class Logs extends Service {
  Logs(super.client);

  /// Get Logs
  ///
  /// Returns your last 1,000 requests you made during the last 3 months.
  ///
  /// See [Get Logs API](https://docs.tomba.io/api/account#retrieve-api-logs#get-logs)
  Future<Response<dynamic>> getLogs({int? page, int? limit}) {
    const String path = '/logs';

    final Map<String, dynamic> params = {
      'page': page,
      'limit': limit,
    };

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }
}

part of '../tomba.dart';

/// Usage
///
/// Check your monthly API usage.
///
/// See [Usage API](https://docs.tomba.io/api/account#retrieve-api-usage)
class Usage extends Service {
  Usage(super.client);

  /// Get Usage
  ///
  /// Returns your monthly requests.
  ///
  /// See [Get Usage API](https://docs.tomba.io/api/account#retrieve-api-usage#get-usage)
  Future<Response<dynamic>> getUsage() {
    const String path = '/usage';

    const Map<String, dynamic> params = {};

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }
}

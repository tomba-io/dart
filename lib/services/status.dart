part of '../tomba.dart';

/// Status
///
/// Check domain status and autocomplete company names.
///
/// See [Status API](https://docs.tomba.io/api/status)
class Status extends Service {
  Status(super.client);

  /// Domain status
  ///
  /// Returns domain status if is webmail or disposable.
  ///
  /// See [Domain Status API](https://docs.tomba.io/api/status#domain-status)
  Future<Response<dynamic>> domainStatus({required String domain}) {
    const String path = '/domain-status';

    final Map<String, dynamic> params = {
      'domain': domain,
    };

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }

  /// Company Autocomplete
  ///
  /// Company Autocomplete is an API that lets you auto-complete company names
  /// and retrieve logo and domain information.
  ///
  /// See [Domain Suggestions API](https://docs.tomba.io/api/status#domain-suggestions)
  Future<Response<dynamic>> autoComplete({required String query}) {
    const String path = '/domain-suggestions';

    final Map<String, dynamic> params = {
      'query': query,
    };

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }
}

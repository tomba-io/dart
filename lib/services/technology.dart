part of '../tomba.dart';

/// Technology
///
/// Find technologies used by a domain.
///
/// See [Technology API](https://docs.tomba.io/api/domain#technology)
class Technology extends Service {
  Technology(super.client);

  /// Technology List
  ///
  /// Returns a list of technologies used by the given domain.
  ///
  /// See [Technology Finder API](https://docs.tomba.io/api/domain#technology#technology-finder)
  Future<Response<dynamic>> list({required String domain}) {
    const String path = '/technology';

    final Map<String, dynamic> params = {
      'domain': domain,
    };

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }
}

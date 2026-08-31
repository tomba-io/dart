part of '../tomba.dart';

/// Similar
///
/// Find similar websites to a given domain.
///
/// See [Similar API](https://docs.tomba.io/api/similar)
class Similar extends Service {
  Similar(super.client);

  /// Similar Websites
  ///
  /// Find websites that are similar to the specified domain.
  ///
  /// See [Similar Websites API](https://docs.tomba.io/api/similar#similar-websites)
  Future<Response<dynamic>> websites({required String domain}) {
    const String path = '/similar';

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

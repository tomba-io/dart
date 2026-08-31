part of '../tomba.dart';

/// Count
///
/// Get the number of email addresses found for a domain.
///
/// See [Email Count API](https://docs.tomba.io/api/count)
class Count extends Service {
  Count(super.client);

  /// Email Count
  ///
  /// Domain name from which you want to find the email addresses.
  ///
  /// See [Email Count API](https://docs.tomba.io/api/count#email-count)
  Future<Response<dynamic>> emailCount({required String domain}) {
    const String path = '/email-count';

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

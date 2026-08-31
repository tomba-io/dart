part of '../tomba.dart';

/// Sources
///
/// Find email address sources on the web.
///
/// See [Email Sources API](https://docs.tomba.io/api/sources)
class Sources extends Service {
  Sources(super.client);

  /// Email Sources
  ///
  /// Find email address source somewhere on the web.
  ///
  /// See [Email Sources API](https://docs.tomba.io/api/sources#email-sources)
  Future<Response<dynamic>> emailSources({required String email}) {
    const String path = '/email-sources';

    final Map<String, dynamic> params = {
      'email': email,
    };

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }
}

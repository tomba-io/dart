part of '../tomba.dart';

/// Format
///
/// Format and validate email addresses.
///
/// See [Email Format API](https://docs.tomba.io/api/format)
class Format extends Service {
  Format(super.client);

  /// Email Format
  ///
  /// Check the format of an email address and return detailed information.
  ///
  /// See [Email Format API](https://docs.tomba.io/api/format#email-format)
  Future<Response<dynamic>> emailFormat({required String email}) {
    const String path = '/email-format';

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

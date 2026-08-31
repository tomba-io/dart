part of '../tomba.dart';

/// Verifier
///
/// Verify email addresses.
///
/// See [Email Verifier API](https://docs.tomba.io/api/verifier)
class Verifier extends Service {
  Verifier(super.client);

  /// Email Verifier
  ///
  /// Verify the deliverability of an email address.
  ///
  /// See [Email Verifier API](https://docs.tomba.io/api/verifier#email-verifier)
  Future<Response<dynamic>> emailVerifier({required String email, String? webhookUrl}) {
    const String path = '/email-verifier';

    final Map<String, dynamic> params = {
      'email': email,
      'webhook_url': webhookUrl,
    };

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }
}

part of tomba;

class Verifier extends Service {
  Verifier(Client client) : super(client);

  /// Email Verifier
  ///
  /// verify the deliverability of an email address.
  ///
  Future<Response> emailVerifier({required String email}) {
    final String path =
        '/email-verifier/{email}'.replaceAll(RegExp('{email}'), email);

    final Map<String, dynamic> params = {};

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }
}

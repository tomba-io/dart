part of tomba;

class Sources extends Service {
  Sources(Client client) : super(client);

  /// Email Sources
  ///
  /// Find email address source somewhere on the web.
  ///
  Future<Response> emailSources({required String email}) {
    final String path =
        '/email-sources/{email}'.replaceAll(RegExp('{email}'), email);

    final Map<String, dynamic> params = {};

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }
}

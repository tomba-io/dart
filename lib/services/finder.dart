part of tomba;

class Finder extends Service {
  Finder(Client client) : super(client);

  /// Email Finder
  ///
  /// generates or retrieves the most likely email address from a domain name, a
  /// first name and a last name.
  ///
  Future<Response> emailFinder(
      {required String domain,
      required String firstName,
      required String lastName}) {
    final String path =
        '/email-finder/{domain}'.replaceAll(RegExp('{domain}'), domain);

    final Map<String, dynamic> params = {
      'first_name': firstName,
      'last_name': lastName,
    };

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }
}

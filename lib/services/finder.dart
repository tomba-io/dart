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
    final String path = '/email-finder';

    final Map<String, dynamic> params = {
      'domain': domain,
      'first_name': firstName,
      'last_name': lastName,
    };

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }

  /// Author Finder
  ///
  /// This API endpoint generates or retrieves the most likely email address from a blog post url.
  ///
  Future<Response> authorFinder({required String url}) {
    final String path = '/author-finder';

    final Map<String, dynamic> params = {
      'url': url,
    };

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }

  /// Linkedin Finder
  ///
  /// This API endpoint generates or retrieves the most likely email address from a Linkedin URL.
  ///
  Future<Response> linkedinFinder({required String url}) {
    final String path = '/linkedin';

    final Map<String, dynamic> params = {
      'url': url,
    };

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }

  /// Phone Finder
  ///
  /// Search phone are based on the email You give one email and it returns phone data
  ///
  Future<Response> phoneFinder({required String email}) {
    final String path = '/phone/{email}'.replaceAll(RegExp('{email}'), email);

    final Map<String, dynamic> params = {};

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }
}

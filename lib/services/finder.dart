part of '../tomba.dart';

/// Finder
///
/// Find email addresses using various methods.
///
/// See [Finder API](https://docs.tomba.io/api/finder)
class Finder extends Service {
  Finder(super.client);

  /// Email Finder
  ///
  /// Generates the most likely email address from a domain name, a first name
  /// and a last name.
  ///
  /// See [Email Finder API](https://docs.tomba.io/api/finder#email-finder)
  Future<Response<dynamic>> emailFinder(
      {required String domain,
      required String firstName,
      required String lastName,
      String? webhookUrl}) {
    const String path = '/email-finder';

    final Map<String, dynamic> params = {
      'domain': domain,
      'first_name': firstName,
      'last_name': lastName,
      'webhook_url': webhookUrl,
    };

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }

  /// Author Finder
  ///
  /// This API endpoint generates or retrieves the most likely email address
  /// from a blog post url.
  ///
  /// See [Author Finder API](https://docs.tomba.io/api/finder#author-finder)
  Future<Response<dynamic>> authorFinder(
      {required String url, String? webhookUrl}) {
    const String path = '/author-finder';

    final Map<String, dynamic> params = {
      'url': url,
      'webhook_url': webhookUrl,
    };

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }

  /// Linkedin Finder
  ///
  /// This API endpoint generates or retrieves the most likely email address
  /// from a Linkedin URL.
  ///
  /// See [Linkedin Finder API](https://docs.tomba.io/api/finder#linkedin-finder)
  Future<Response<dynamic>> linkedinFinder(
      {required String url, String? webhookUrl}) {
    const String path = '/linkedin';

    final Map<String, dynamic> params = {
      'url': url,
      'webhook_url': webhookUrl,
    };

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }

  /// Phone Finder
  ///
  /// Search phone are based on the email. You give one email and it returns
  /// phone data.
  ///
  /// See [Phone Finder API](https://docs.tomba.io/api/finder#phone-finder)
  Future<Response<dynamic>> phoneFinder(
      {required String email, String? webhookUrl}) {
    const String path = '/phone-finder';

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

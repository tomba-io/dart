part of '../tomba.dart';

/// PhoneFinder
///
/// Find and validate phone numbers.
///
/// See [Phone API](https://docs.tomba.io/api/phone)
class PhoneFinder extends Service {
  PhoneFinder(super.client);

  /// Phone Finder
  ///
  /// Search phone numbers based on the email. You give one email and it
  /// returns phone data.
  ///
  /// See [Phone Finder API](https://docs.tomba.io/api/phone#phone-finder)
  Future<Response<dynamic>> finder({required String email, String? webhookUrl}) {
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

  /// Phone Validator
  ///
  /// Validate a phone number and get additional information about it.
  ///
  /// See [Phone Validator API](https://docs.tomba.io/api/phone#phone-validator)
  Future<Response<dynamic>> validator({required String phone}) {
    const String path = '/phone-validator';

    final Map<String, dynamic> params = {
      'phone': phone,
    };

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }
}

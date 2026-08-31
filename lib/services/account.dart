part of '../tomba.dart';

/// Account
///
/// Manage your Tomba account.
///
/// See [Account API](https://docs.tomba.io/api/account)
class Account extends Service {
  Account(super.client);

  /// Get Account
  ///
  /// Returns information about the current account.
  ///
  /// See [Get Account API](https://docs.tomba.io/api/account#get-account)
  Future<Response<dynamic>> getAccount() {
    const String path = '/me';

    const Map<String, dynamic> params = {};

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }
}

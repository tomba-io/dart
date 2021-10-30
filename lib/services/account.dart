part of tomba;

class Account extends Service {
  Account(Client client) : super(client);

  /// Get Account
  ///
  /// Returns information about the current account.
  ///
  Future<Response> getAccount() {
    final String path = '/me';

    final Map<String, dynamic> params = {};

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }
}

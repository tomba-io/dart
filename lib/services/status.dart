part of tomba;

class Status extends Service {
  Status(Client client) : super(client);

  /// Domain status
  ///
  /// Returns domain status if is webmail or disposable.
  ///
  Future<Response> domainStatus({required String domain}) {
    final String path = '/domain-status';

    final Map<String, dynamic> params = {
      'domain': domain,
    };

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }

  /// get Company Autocomplete
  ///
  /// Company Autocomplete is an API that lets you auto-complete company names
  /// and retrieve logo and domain information.
  ///
  Future<Response> autoComplete({required String query}) {
    final String path = '/domains-suggestion';

    final Map<String, dynamic> params = {
      'query': query,
    };

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }
}

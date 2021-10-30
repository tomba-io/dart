part of tomba;

class Count extends Service {
  Count(Client client) : super(client);

  /// get Email Count
  ///
  /// Domain name from which you want to find the email addresses.
  ///
  Future<Response> emailCount({required String domain}) {
    final String path = '/email-count';

    final Map<String, dynamic> params = {
      'domain': domain,
    };

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }
}

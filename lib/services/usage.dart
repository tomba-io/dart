part of tomba;

class Usage extends Service {
  Usage(Client client) : super(client);

  /// get Usage
  ///
  /// Returns a your monthly requests
  ///
  Future<Response> getUsage() {
    final String path = '/usage';

    final Map<String, dynamic> params = {};

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }
}

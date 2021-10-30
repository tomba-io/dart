part of tomba;

class Logs extends Service {
  Logs(Client client) : super(client);

  /// get Logs
  ///
  /// Returns a your last 1,000 requests you made during the last 3 months.
  ///
  Future<Response> getLogs() {
    final String path = '/logs';

    final Map<String, dynamic> params = {};

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }
}

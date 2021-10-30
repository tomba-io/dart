part of tomba;

class Keys extends Service {
  Keys(Client client) : super(client);

  /// Get your keys.
  ///
  /// Returns a list of your keys.
  ///
  Future<Response> getKeys() {
    final String path = '/keys/{id}';

    final Map<String, dynamic> params = {};

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }

  /// Delete key
  ///
  /// Delete key
  ///
  Future<Response> deleteKey({required String id}) {
    final String path = '/keys/{id}'.replaceAll(RegExp('{id}'), id);

    final Map<String, dynamic> params = {};

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.delete,
        path: path, params: params, headers: headers);
  }

  /// Create Key
  ///
  /// Create a new Key.
  ///
  Future<Response> createKey() {
    final String path = '/keys/{id}';

    final Map<String, dynamic> params = {};

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.post,
        path: path, params: params, headers: headers);
  }

  /// Reset a key
  ///
  /// Rest your key.
  ///
  Future<Response> resetKey({required String id}) {
    final String path = '/keys/{id}'.replaceAll(RegExp('{id}'), id);

    final Map<String, dynamic> params = {};

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.put,
        path: path, params: params, headers: headers);
  }
}

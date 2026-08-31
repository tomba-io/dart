part of '../tomba.dart';

/// Keys
///
/// Manage your API keys.
///
/// See [Keys API](https://docs.tomba.io/api/keys)
class Keys extends Service {
  Keys(super.client);

  /// Get your keys.
  ///
  /// Returns a list of your keys.
  ///
  /// See [List Keys API](https://docs.tomba.io/api/keys)
  Future<Response<dynamic>> getKeys() {
    const String path = '/keys';

    const Map<String, dynamic> params = {};

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }

  /// Delete key
  ///
  /// Delete a specific key by passing its id.
  ///
  /// See [Delete Key API](https://docs.tomba.io/api/keys#delete-an-api-key)
  Future<Response<dynamic>> deleteKey({required String id}) {
    final String path = '/keys/$id';

    const Map<String, dynamic> params = {};

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.delete,
        path: path, params: params, headers: headers);
  }

  /// Create Key
  ///
  /// Create a new Key.
  ///
  /// See [Create Key API](https://docs.tomba.io/api/keys#create-an-api-key)
  Future<Response<dynamic>> createKey() {
    const String path = '/keys';

    const Map<String, dynamic> params = {};

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.post,
        path: path, params: params, headers: headers);
  }

  /// Reset a key
  ///
  /// Reset your key.
  ///
  /// See [Reset Key API](https://docs.tomba.io/api/keys#reset-an-api-key)
  Future<Response<dynamic>> resetKey({required String id}) {
    final String path = '/keys/$id';

    const Map<String, dynamic> params = {};

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.put,
        path: path, params: params, headers: headers);
  }
}

part of '../tomba.dart';

/// Flag
///
/// Manage email address flags.
///
/// See [Flag API](https://docs.tomba.io/api/flag)
class Flag extends Service {
  Flag(super.client);

  /// List Flags
  ///
  /// Returns a list of email address flags.
  ///
  /// See [List Flags API](https://docs.tomba.io/api/flag#list-flags)
  Future<Response<dynamic>> listFlags({int? page, int? limit}) {
    const String path = '/flags';

    final Map<String, dynamic> params = {
      'page': page,
      'limit': limit,
    };

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }

  /// Create Flag
  ///
  /// Create a new email address flag.
  ///
  /// See [Create Flag API](https://docs.tomba.io/api/flag#create-flag)
  Future<Response<dynamic>> createFlag(
      {required String email, required String flag}) {
    const String path = '/flags';

    final Map<String, dynamic> params = {
      'email': email,
      'flag': flag,
    };

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.post,
        path: path, params: params, headers: headers);
  }
}

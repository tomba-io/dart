part of '../tomba.dart';

/// Location
///
/// Get location information based on Domain.
///
/// See [Location API](https://docs.tomba.io/api/finder#location)
class Location extends Service {
  Location(super.client);

  /// Get Location
  ///
  /// Get the current location information based on Domain.
  ///
  /// See [Get Location API](https://docs.tomba.io/api/finder#location#get-location)
  Future<Response<dynamic>> getLocation({required String domain}) {
    const String path = '/location';

    final Map<String, dynamic> params = {
      'domain': domain,
    };

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }
}

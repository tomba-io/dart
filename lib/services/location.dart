part of '../tomba.dart';

/// Location
///
/// Get location information based on IP address.
///
/// See [Location API](https://docs.tomba.io/api/finder#location)
class Location extends Service {
  Location(super.client);

  /// Get Location
  ///
  /// Get the current location information based on IP address.
  ///
  /// See [Get Location API](https://docs.tomba.io/api/finder#location#get-location)
  Future<Response<dynamic>> getLocation() {
    const String path = '/location';

    const Map<String, dynamic> params = {};

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }
}

part of '../tomba.dart';

/// Bulk
///
/// Manage bulk email operations.
///
/// See [Bulk API](https://docs.tomba.io/api/bulk)
class Bulk extends Service {
  Bulk(super.client);

  static const validTypes = [
    'search',
    'similar',
    'company',
    'finder',
    'enrich',
    'linkedin',
    'author',
    'verifier',
    'phone-finder',
    'phone-validator'
  ];

  void _validateType(String type) {
    if (!validTypes.contains(type)) {
      throw Exception(
          'Invalid bulk type: "$type". Must be one of: ${validTypes.join(", ")}');
    }
  }

  /// List Bulk Tasks
  ///
  /// Returns a list of bulk tasks.
  ///
  /// See [List Bulk API](https://docs.tomba.io/api/bulks)
  Future<Response<dynamic>> list({required String type}) {
    _validateType(type);
    final String path = '/bulk/$type';

    const Map<String, dynamic> params = {};

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }

  /// Get Bulk Task
  ///
  /// Returns a specific bulk task by its id.
  ///
  /// See [Get Bulk API](https://docs.tomba.io/api/bulk#get-bulk)
  Future<Response<dynamic>> get({required String type, required String id}) {
    _validateType(type);
    final String path = '/bulk/$type/$id';

    const Map<String, dynamic> params = {};

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }

  /// Create Bulk Task
  ///
  /// Create a new bulk task.
  ///
  /// See [Create Bulk API](https://docs.tomba.io/api/bulk)
  Future<Response<dynamic>> create(
      {required String type, required Map<String, dynamic> data}) {
    _validateType(type);
    final String path = '/bulk/$type';

    final Map<String, dynamic> params = data;

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.post,
        path: path, params: params, headers: headers);
  }

  /// Launch Bulk Task
  ///
  /// Launch a bulk task by its id.
  ///
  /// See [Launch Bulk API](https://docs.tomba.io/api/bulk)
  Future<Response<dynamic>> launch({required String type, required String id}) {
    _validateType(type);
    final String path = '/bulk/$type/$id';

    const Map<String, dynamic> params = {};

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.post,
        path: path, params: params, headers: headers);
  }

  /// Delete Bulk Task
  ///
  /// Delete a specific bulk task by its id.
  ///
  /// See [Delete Bulk API](https://docs.tomba.io/api/bulk)
  Future<Response<dynamic>> delete({required String type, required String id}) {
    _validateType(type);
    final String path = '/bulk/$type/$id';

    const Map<String, dynamic> params = {};

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.delete,
        path: path, params: params, headers: headers);
  }

  /// Archive Bulk Task
  ///
  /// Archive a bulk task by its id.
  ///
  /// See [Archive Bulk API](https://docs.tomba.io/api/bulk)
  Future<Response<dynamic>> archive(
      {required String type, required String id}) {
    _validateType(type);
    final String path = '/bulk/$type/$id/archive';

    const Map<String, dynamic> params = {};

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.post,
        path: path, params: params, headers: headers);
  }

  /// Rename Bulk Task
  ///
  /// Rename a bulk task by its id.
  ///
  /// See [Rename Bulk API](https://docs.tomba.io/api/bulk)
  Future<Response<dynamic>> rename(
      {required String type, required String id, required String name}) {
    _validateType(type);
    final String path = '/bulk/$type/$id/rename';

    final Map<String, dynamic> params = {
      'name': name,
    };

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.put,
        path: path, params: params, headers: headers);
  }

  /// Bulk Progress
  ///
  /// Get the progress of a bulk task by its id.
  ///
  /// See [Bulk Progress API](https://docs.tomba.io/api/bulk)
  Future<Response<dynamic>> progress(
      {required String type, required String id}) {
    _validateType(type);
    final String path = '/bulk/$type/$id/progress';

    const Map<String, dynamic> params = {};

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }

  /// Download Bulk Results
  ///
  /// Download the results of a bulk task by its id.
  ///
  /// See [Download Bulk API](https://docs.tomba.io/api/bulk)
  Future<Response<dynamic>> download(
      {required String type, required String id}) {
    _validateType(type);
    final String path = '/bulk/$type/$id/download';

    const Map<String, dynamic> params = {};

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }
}

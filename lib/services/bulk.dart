part of '../tomba.dart';

/// Bulk
///
/// Manage bulk email operations.
///
/// See [Bulk API](https://docs.tomba.io/api/bulk)
class Bulk extends Service {
  Bulk(super.client);

  /// List Bulk Tasks
  ///
  /// Returns a list of bulk tasks.
  ///
  /// See [List Bulk API](https://docs.tomba.io/api/bulks)
  Future<Response<dynamic>> list() {
    const String path = '/bulk';

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
  Future<Response<dynamic>> get({required String id}) {
    final String path = '/bulk/$id';

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
  /// See [Create Bulk API](https://docs.tomba.io/api/bulk#create-bulk)
  Future<Response<dynamic>> create({required Map<String, dynamic> data}) {
    const String path = '/bulk';

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
  /// See [Launch Bulk API](https://docs.tomba.io/api/bulk#launch-bulk)
  Future<Response<dynamic>> launch({required String id}) {
    final String path = '/bulk/$id/launch';

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
  /// See [Delete Bulk API](https://docs.tomba.io/api/bulk#delete-bulk)
  Future<Response<dynamic>> delete({required String id}) {
    final String path = '/bulk/$id';

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
  /// See [Archive Bulk API](https://docs.tomba.io/api/bulk#archive-bulk)
  Future<Response<dynamic>> archive({required String id}) {
    final String path = '/bulk/$id/archive';

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
  /// See [Rename Bulk API](https://docs.tomba.io/api/bulk#rename-bulk)
  Future<Response<dynamic>> rename({required String id, required String name}) {
    final String path = '/bulk/$id/rename';

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
  /// See [Bulk Progress API](https://docs.tomba.io/api/bulk#bulk-progress)
  Future<Response<dynamic>> progress({required String id}) {
    final String path = '/bulk/$id/progress';

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
  /// See [Download Bulk API](https://docs.tomba.io/api/bulk#download-bulk)
  Future<Response<dynamic>> download({required String id}) {
    final String path = '/bulk/$id/download';

    const Map<String, dynamic> params = {};

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }
}

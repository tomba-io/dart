part of '../tomba.dart';

/// Leads Lists
///
/// Manage your leads lists.
///
/// See [Leads Lists API](https://docs.tomba.io/api/leads-lists)
class LeadsLists extends Service {
  LeadsLists(super.client);

  /// Get Leads Lists
  ///
  /// Returns a list of leads lists.
  ///
  /// See [List Leads Lists API](https://docs.tomba.io/api/leads-lists#list-leads-lists)
  Future<Response<dynamic>> getLists() {
    const String path = '/leads_lists';

    const Map<String, dynamic> params = {};

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }

  /// Delete List ID
  ///
  /// Delete a specific list by passing id.
  ///
  /// See [Delete List API](https://docs.tomba.io/api/lead-lists#delete-leads-list)
  Future<Response<dynamic>> deleteListId({required String id}) {
    final String path = '/leads_lists/$id';

    const Map<String, dynamic> params = {};

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.delete,
        path: path, params: params, headers: headers);
  }

  /// Create new List
  ///
  /// Create a new leads list with the name request parameter.
  ///
  /// See [Create List API](https://docs.tomba.io/api/lead-lists#create-leads-list)
  Future<Response<dynamic>> createList({required String name}) {
    const String path = '/leads_lists';

    final Map<String, dynamic> params = {
      'name': name,
    };

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.post,
        path: path, params: params, headers: headers);
  }

  /// Update List ID
  ///
  /// Update the fields of a list using id.
  ///
  /// See [Update List API](https://docs.tomba.io/api/lead-lists#update-leads-list)
  Future<Response<dynamic>> updateListId({required String id, required String name}) {
    final String path = '/leads_lists/$id';

    final Map<String, dynamic> params = {
      'name': name,
    };

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.put,
        path: path, params: params, headers: headers);
  }
}

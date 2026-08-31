part of '../tomba.dart';

/// Leads
///
/// Manage your leads.
///
/// See [Leads API](https://docs.tomba.io/api/leads)
class Leads extends Service {
  Leads(super.client);

  /// List Leads
  ///
  /// Returns a list of leads.
  ///
  /// See [List Leads API](https://docs.tomba.io/api/leads)
  Future<Response<dynamic>> listLeads(
      {int? page, int? limit, String? listId, String? domain}) {
    const String path = '/leads';

    final Map<String, dynamic> params = {
      'page': page,
      'limit': limit,
      'list_id': listId,
      'domain': domain,
    };

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }

  /// Get Lead
  ///
  /// Returns a specific lead by its id.
  ///
  /// See [Get Lead API](https://docs.tomba.io/api/leads#retrieve-a-single-lead)
  Future<Response<dynamic>> getLead({required String id}) {
    final String path = '/leads/$id';

    const Map<String, dynamic> params = {};

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }

  /// Create Lead
  ///
  /// Create a new lead.
  ///
  /// See [Create Lead API](https://docs.tomba.io/api/leads#create-a-lead)
  Future<Response<dynamic>> createLead({required Map<String, dynamic> data}) {
    const String path = '/leads';

    final Map<String, dynamic> params = data;

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.post,
        path: path, params: params, headers: headers);
  }

  /// Update Lead
  ///
  /// Update an existing lead by its id.
  ///
  /// See [Update Lead API](https://docs.tomba.io/api/leads#update-a-lead)
  Future<Response<dynamic>> updateLead(
      {required String id, required Map<String, dynamic> data}) {
    final String path = '/leads/$id';

    final Map<String, dynamic> params = data;

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.put,
        path: path, params: params, headers: headers);
  }

  /// Delete Lead
  ///
  /// Delete a specific lead by its id.
  ///
  /// See [Delete Lead API](https://docs.tomba.io/api/leads#delete-a-lead)
  Future<Response<dynamic>> deleteLead({required String id}) {
    final String path = '/leads/$id';

    const Map<String, dynamic> params = {};

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.delete,
        path: path, params: params, headers: headers);
  }
}

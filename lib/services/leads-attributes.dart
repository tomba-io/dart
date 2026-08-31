part of '../tomba.dart';

/// Leads Attributes
///
/// Manage your lead attributes.
///
/// See [Leads Attributes API](https://docs.tomba.io/api/leads-attributes)
class LeadsAttributes extends Service {
  LeadsAttributes(super.client);

  /// Get Lead Attributes
  ///
  /// Returns a list of Lead Attributes.
  ///
  /// See [List Lead Attributes API](https://docs.tomba.io/api/leads-attributes#list-lead-attributes)
  Future<Response<dynamic>> getLeadAttributes() {
    const String path = '/leads/attributes';

    const Map<String, dynamic> params = {};

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }

  /// Delete Lead Attribute
  ///
  /// Delete a specific Attribute by passing id.
  ///
  /// See [Delete Lead Attribute API](https://docs.tomba.io/api/leads-attributes#delete-lead-attribute)
  Future<Response<dynamic>> deleteLeadAttribute({required String id}) {
    final String path = '/leads/attributes/$id';

    const Map<String, dynamic> params = {};

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.delete,
        path: path, params: params, headers: headers);
  }

  /// Create Lead Attribute
  ///
  /// Create a new Attribute with the name and type request parameter.
  ///
  /// See [Create Lead Attribute API](https://docs.tomba.io/api/leads-attributes#create-lead-attribute)
  Future<Response<dynamic>> createLeadAttribute(
      {required String name, required String type}) {
    const String path = '/leads/attributes';

    final Map<String, dynamic> params = {
      'name': name,
      'type': type,
    };

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.post,
        path: path, params: params, headers: headers);
  }

  /// Update Lead Attribute
  ///
  /// Update the fields of an Attribute using id.
  ///
  /// See [Update Lead Attribute API](https://docs.tomba.io/api/leads-attributes#update-lead-attribute)
  Future<Response<dynamic>> updateLeadAttribute(
      {required String id, String? name}) {
    final String path = '/leads/attributes/$id';

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

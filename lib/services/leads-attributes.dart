part of tomba;

class LeadsAttributes extends Service {
  LeadsAttributes(Client client) : super(client);

  /// Get Lead Attributes
  ///
  /// Returns a list of Lead Attributes.
  ///
  Future<Response> getLeadAttributes() {
    final String path = '/leads/attributes/{id}';

    final Map<String, dynamic> params = {};

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }

  /// Delete Lead Attribute
  ///
  /// Delete a specific Attributes by passing id.
  ///
  Future<Response> deleteLeadAttribute({required String id}) {
    final String path = '/leads/attributes/{id}'.replaceAll(RegExp('{id}'), id);

    final Map<String, dynamic> params = {};

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.delete,
        path: path, params: params, headers: headers);
  }

  /// Create Lead Attribute
  ///
  /// Create a new Attributes with the name and type request parameter.
  ///
  Future<Response> createLeadAttribute() {
    final String path = '/leads/attributes/{id}';

    final Map<String, dynamic> params = {};

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.post,
        path: path, params: params, headers: headers);
  }

  /// Update Lead Attribute
  ///
  /// Update the fields of a Attributes using id.
  ///
  Future<Response> updateLeadAttribute({required String id}) {
    final String path = '/leads/attributes/{id}'.replaceAll(RegExp('{id}'), id);

    final Map<String, dynamic> params = {};

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.put,
        path: path, params: params, headers: headers);
  }
}

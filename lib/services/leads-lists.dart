part of tomba;

class LeadsLists extends Service {
  LeadsLists(Client client) : super(client);

  /// Get Leads Lists
  ///
  /// Returns a list of leads lists..
  ///
  Future<Response> getLists() {
    final String path = '/leads_lists/{id}';

    final Map<String, dynamic> params = {};

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }

  /// Delete List ID
  ///
  /// Delete a specific list by passing id.
  ///
  Future<Response> deleteListId({required String id}) {
    final String path = '/leads_lists/{id}'.replaceAll(RegExp('{id}'), id);

    final Map<String, dynamic> params = {};

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.delete,
        path: path, params: params, headers: headers);
  }

  /// Create new List
  ///
  /// Create a new leads list with the name request parameter
  ///
  Future<Response> createList() {
    final String path = '/leads_lists/{id}';

    final Map<String, dynamic> params = {};

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.post,
        path: path, params: params, headers: headers);
  }

  /// Update List ID
  ///
  /// Update the fields of a list using id.
  ///
  Future<Response> updateListId({required String id}) {
    final String path = '/leads_lists/{id}'.replaceAll(RegExp('{id}'), id);

    final Map<String, dynamic> params = {};

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.put,
        path: path, params: params, headers: headers);
  }
}

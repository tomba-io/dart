part of tomba;

class Domain extends Service {
  Domain(Client client) : super(client);

  /// Domain Search
  ///
  /// You can use this endpoint to show different browser icons to your users.
  /// The code argument receives the browser code as it appears in your user
  /// /account/sessions endpoint. Use width, height and quality arguments to
  /// change the output settings.
  ///
  Future<Response> domainSearch(
      {required String domain, int? page, int? limit, String? department}) {
    final String path = '/domain-search';

    final Map<String, dynamic> params = {
      'domain': domain,
      'page': page,
      'limit': limit,
      'department': department,
    };

    final Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }
}

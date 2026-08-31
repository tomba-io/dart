part of '../tomba.dart';

/// Reveal
///
/// Search for companies.
///
/// See [Reveal API](https://docs.tomba.io/api/reveal)
class Reveal extends Service {
  Reveal(super.client);

  /// Companies Search
  ///
  /// Search for companies by various criteria.
  ///
  /// See [Companies Search API](https://docs.tomba.io/api/reveal#companies-search)
  Future<Response<dynamic>> companiesSearch({required String query, int? page, int? limit}) {
    const String path = '/reveal';

    final Map<String, dynamic> params = {
      'query': query,
      'page': page,
      'limit': limit,
    };

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }
}

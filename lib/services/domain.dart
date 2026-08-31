part of '../tomba.dart';

/// Domain
///
/// Search emails by domain.
///
/// See [Domain Search API](https://docs.tomba.io/api/finder#domain-search)
class Domain extends Service {
  Domain(super.client);

  /// Domain Search
  ///
  /// Search emails from a domain. Returns all the email addresses found using
  /// a given domain, with sources.
  ///
  /// See [Domain Search API](https://docs.tomba.io/api/finder#domain-search#domain-search)
  Future<Response<dynamic>> domainSearch(
      {required String domain,
      int? page,
      int? limit,
      String? department,
      bool? enrichMobile,
      String? webhookUrl}) {
    const String path = '/domain-search';

    final Map<String, dynamic> params = {
      'domain': domain,
      'page': page,
      'limit': limit,
      'department': department,
      'enrich_mobile': enrichMobile,
      'webhook_url': webhookUrl,
    };

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }
}

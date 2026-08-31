part of '../tomba.dart';

/// Enrichment
///
/// Enrich data about a person or company.
///
/// See [Enrichment API](https://docs.tomba.io/api/enrichment)
class Enrichment extends Service {
  Enrichment(super.client);

  /// Person Enrichment
  ///
  /// Get enrichment data for a person based on their email address.
  ///
  /// See [Person Enrichment API](https://docs.tomba.io/api/enrichment#person-enrichment)
  Future<Response<dynamic>> person({required String email, String? webhookUrl}) {
    const String path = '/enrichment';

    final Map<String, dynamic> params = {
      'email': email,
      'webhook_url': webhookUrl,
    };

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }

  /// Company Enrichment
  ///
  /// Get enrichment data for a company based on its domain.
  ///
  /// See [Company Enrichment API](https://docs.tomba.io/api/enrichment#company-enrichment)
  Future<Response<dynamic>> company({required String domain}) {
    const String path = '/enrichment/company';

    final Map<String, dynamic> params = {
      'domain': domain,
    };

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }

  /// Combined Enrichment
  ///
  /// Get combined enrichment data for both person and company.
  ///
  /// See [Combined Enrichment API](https://docs.tomba.io/api/enrichment#combined-enrichment)
  Future<Response<dynamic>> combined({required String email}) {
    const String path = '/enrichment/combined';

    final Map<String, dynamic> params = {
      'email': email,
    };

    const Map<String, String> headers = {
      'content-type': 'application/json',
    };

    return client.call(HttpMethod.get,
        path: path, params: params, headers: headers);
  }
}

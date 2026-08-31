class TombaException implements Exception {
  TombaException([this.message = '', this.code, this.response]);

  final String? message;
  final int? code;
  final dynamic response;

  @override
  String toString() {
    if (message == null) return 'TombaException';
    return 'TombaException: $message (${code ?? 0})';
  }
}

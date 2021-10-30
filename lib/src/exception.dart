class TombaException implements Exception {
  final String? message;
  final int? code;
  final dynamic response;

  TombaException([this.message = "", this.code, this.response]);

  String toString() {
    if (message == null) return "TombaException";
    return "TombaException: $message (${code ?? 0})";
  }
}

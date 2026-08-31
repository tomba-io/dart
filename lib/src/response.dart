import 'dart:convert';

/// Rate-limit information extracted from response headers.
class RateLimit {
  /// Maximum requests allowed per second.
  final String? xSecondRateLimit;

  /// Maximum requests allowed per minute.
  final String? xMinuteRateLimit;

  /// Maximum requests allowed per day.
  final String? xDailyRateLimit;

  /// Remaining requests in the current minute window.
  final String? xMinuteRequestLeft;

  /// Remaining requests in the current daily window.
  final String? xDailyRequestLeft;

  /// Seconds until the per-minute limit resets.
  final String? xMinuteResetSeconds;

  /// Seconds until the daily limit resets.
  final String? xDailyResetSeconds;

  /// Standard `Retry-After` header value (seconds).
  final String? retryAfter;

  /// Standard `RateLimit-Policy` header value.
  final String? rateLimitPolicy;

  /// Standard `RateLimit` header value.
  final String? rateLimit;

  const RateLimit({
    this.xSecondRateLimit,
    this.xMinuteRateLimit,
    this.xDailyRateLimit,
    this.xMinuteRequestLeft,
    this.xDailyRequestLeft,
    this.xMinuteResetSeconds,
    this.xDailyResetSeconds,
    this.retryAfter,
    this.rateLimitPolicy,
    this.rateLimit,
  });

  /// Parse rate-limit headers from an HTTP response header map.
  factory RateLimit.fromHeaders(Map<String, String> headers) {
    return RateLimit(
      xSecondRateLimit: headers['x-second-rate-limit'],
      xMinuteRateLimit: headers['x-minute-rate-limit'],
      xDailyRateLimit: headers['x-daily-rate-limit'],
      xMinuteRequestLeft: headers['x-minute-request-left'],
      xDailyRequestLeft: headers['x-daily-request-left'],
      xMinuteResetSeconds: headers['x-minute-reset-seconds'],
      xDailyResetSeconds: headers['x-daily-reset-seconds'],
      retryAfter: headers['retry-after'],
      rateLimitPolicy: headers['ratelimit-policy'],
      rateLimit: headers['ratelimit'],
    );
  }

  Map<String, dynamic> toJson() => {
        'x_second_rate_limit': xSecondRateLimit,
        'x_minute_rate_limit': xMinuteRateLimit,
        'x_daily_rate_limit': xDailyRateLimit,
        'x_minute_request_left': xMinuteRequestLeft,
        'x_daily_request_left': xDailyRequestLeft,
        'x_minute_reset_seconds': xMinuteResetSeconds,
        'x_daily_reset_seconds': xDailyResetSeconds,
        'retry_after': retryAfter,
        'rate_limit_policy': rateLimitPolicy,
        'rate_limit': rateLimit,
      };

  @override
  String toString() => json.encode(toJson());
}

class Response<T> {
  Response({this.data, this.rateLimit = const RateLimit()});

  T? data;

  /// Rate-limit information extracted from the response headers.
  final RateLimit rateLimit;

  @override
  String toString() {
    if (data is Map<String, dynamic>) {
      return json.encode(data);
    }
    return data.toString();
  }
}

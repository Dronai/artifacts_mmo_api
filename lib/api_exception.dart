class ApiException implements Exception {
  ApiException(this.code, this.message);

  ApiException.withInner(
    this.code,
    this.message,
    this.innerException,
    this.stackTrace,
  );

  int code = 0;
  String? message;
  Exception? innerException;
  StackTrace? stackTrace;

  @override
  String toString() {
    if (message == null) {
      return 'ApiException';
    }
    if (innerException == null) {
      return 'ApiException $code: $message';
    }
    return 'ApiException $code: $message (Inner exception: $innerException)\n\n$stackTrace';
  }
}

Exception handleArtifactsError(int statusCode) {
  switch (statusCode) {
    case 455:
      return ApiException(statusCode, "Token generation failed.");
    case 486:
      return ApiException(statusCode, "An action is already in progress by your character.");
    case 490:
      return ApiException(statusCode, "Character already at destination.");
    case 494:
      return ApiException(statusCode, "Name already used.");
    case 495:
      return ApiException(statusCode, "Maximum characters reached on your account.");
    case 498:
      return ApiException(statusCode, "Character not found.");
    case 499:
      return ApiException(statusCode, "Character in cooldown.");
    default:
      return ApiException(statusCode, 'Unexpected error: $statusCode');
  }
}

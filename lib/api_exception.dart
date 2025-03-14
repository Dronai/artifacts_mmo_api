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
    case 494:
      return ApiException(statusCode, "Name already used.");
    case 495:
      return ApiException(statusCode, "Maximum characters reached on your account.");
    case 498:
      return ApiException(statusCode, "Character not found.");
    default:
      return ApiException(statusCode, 'Unexpected error: $statusCode');
  }
}

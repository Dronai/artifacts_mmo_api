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
    case 460:
      return ApiException(statusCode, "Insufficient gold in your bank.");
    case 461:
      return ApiException(statusCode, "A transaction is already in progress with this item/your gold in your bank.");
    case 462:
      return ApiException(statusCode, "Your bank is full.");
    case 473:
      return ApiException(statusCode, "This item cannot be recycled.");
    case 476:
      return ApiException(statusCode, "This item is not a consumable.");
    case 478:
      return ApiException(statusCode, "Missing item or insufficient quantity.");
    case 484:
      return ApiException(
        statusCode,
        "Character can't equip more than 100 utilities in the same slot.",
      );
    case 485:
      return ApiException(statusCode, "This item is already equipped.");
    case 486:
      return ApiException(
        statusCode,
        "An action is already in progress by your character.",
      );
    case 490:
      return ApiException(statusCode, "Character already at destination.");
    case 491:
      return ApiException(statusCode, "Slot is not empty.");
    case 493:
      return ApiException(statusCode, "Not skill level required.");
    case 494:
      return ApiException(statusCode, "Name already used.");
    case 495:
      return ApiException(
        statusCode,
        "Maximum characters reached on your account.",
      );
    case 496:
      return ApiException(statusCode, "Character level is insufficient.");
    case 497:
      return ApiException(statusCode, "Character inventory is full.");
    case 498:
      return ApiException(statusCode, "Character not found.");
    case 499:
      return ApiException(statusCode, "Character in cooldown.");
    default:
      return ApiException(statusCode, 'Unexpected error: $statusCode');
  }
}

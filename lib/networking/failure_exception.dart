class FailureException implements Exception {
  final _message;
  final _prefix;

  FailureException([this._message, this._prefix]);

  @override
  String toString() {
    return "$_prefix $_message";
  }
}

class DataApiException extends FailureException {
  DataApiException([String message])
      : super(message, "Error during communication.");
}

class BadRequestException extends FailureException {
  BadRequestException([String message]) : super(message, "Bad Request");
}

class UnAuthorizedException extends FailureException {
  UnAuthorizedException([String message]) : super(message, "Unauthorized");
}

class InvalidInputException extends FailureException {
  InvalidInputException([String message]) : super(message, "Invalid input");
}

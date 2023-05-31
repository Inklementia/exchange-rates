// Package imports:
import 'package:chopper/chopper.dart';

// Project imports:
import 'error.dart';

class ApiError {
  //
  final String? _message;
  final Response response;

  int get code => response.statusCode;

  String get message {
    if (_message != null && _message!.isNotEmpty) return _message!;

    switch (code) {
      case 408:
        return 'Request Timeout';
      case 503:
        return 'Service Unavailable';
      case 510:
        return 'Serialization Error';
      default:
        return 'Server Error' + ' $code';
    }
  }

  ApiError(
    this.response, {
    message,
  }) : _message = message;

  factory ApiError.basic(Response response) {
    try {
      final MyError error =
          MyError.fromJson(response.error as Map<String, dynamic>);

      if (error.errorMessage != null && error.errorMessage!.isNotEmpty)
        return ApiError(
          response,
          message: error.errorMessage,
        );
      return ApiError(response);
    } catch (e) {
      return ApiError(response);
    }
  }

  @override
  String toString() {
    return message;
  }
}

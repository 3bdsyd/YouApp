import 'package:dio/dio.dart';

class Failures {
  final String errMessage;
  Failures({required this.errMessage});
}

class FailuresServer extends Failures {
  FailuresServer({required super.errMessage});
  factory FailuresServer.fromDioException({
    required DioExceptionType exType,
  }) {
    switch (exType) {
      case DioExceptionType.connectionTimeout:
        return FailuresServer(errMessage: 'connection Timeout');
      case DioExceptionType.sendTimeout:
        return FailuresServer(errMessage: 'send Time out');
      case DioExceptionType.receiveTimeout:
        return FailuresServer(errMessage: 'receive Time out');
      case DioExceptionType.badCertificate:
        return FailuresServer(errMessage: 'bad Certificate');
      case DioExceptionType.badResponse:
        return FailuresServer(errMessage: 'Not Found!');
      case DioExceptionType.cancel:
        return FailuresServer(errMessage: 'cancel');
      case DioExceptionType.connectionError:
        return FailuresServer(errMessage: 'connection Error');
      case DioExceptionType.unknown:
        return FailuresServer(errMessage: 'unknown');
    }
  }
  factory FailuresServer.fromStatusCode({
    required int? statusCode,
    required String message,
  }) {
    if (statusCode == 400 ||
        statusCode == 201 ||
        statusCode == 401 ||
        statusCode == 402 ||
        statusCode == 405) {
      return FailuresServer(errMessage: message);
    }
    return FailuresServer(errMessage: 'An error occurred, try again');
  }
}

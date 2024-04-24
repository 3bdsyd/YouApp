import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:you_app/core/helper/failures_handling.dart';

class ApiServices {
  final Dio _dio = Dio();

  Future<Either<Failures, Map<String, dynamic>>> get({
    required final String url,
  }) async {
    try {
      final Response response = await _dio.get(url);

      return right(response.data);
    } catch (e) {
      if (e is DioException) {
        // if (e.response.extra.containsKey('message')) {
        //   return left(
        //     FailuresServer.fromStatusCode(
        //       statusCode: e.response!.statusCode,
        //       message: e.response!.extra['message'],
        //     ),
        //   );
        // }
        return left(
          FailuresServer.fromDioException(exType: e.type),
        );
      } else {
        return left(
          Failures(errMessage: 'An error occurred, try again'),
        );
      }
    }
  }

  Future<Either<Failures, Map<String, dynamic>>> post({
    required final String url,
    required final Map<String, dynamic> data,
  }) async {
    try {
      final Response response = await _dio.post(url, data: data);
      final Map<String, dynamic> responseData = jsonDecode(response.toString());
      return right(responseData);
    } catch (e) {
      if (e is DioException) {
        Map response = jsonDecode(e.response.toString());
        if (e.response!.statusCode == 400 || e.response!.statusCode == 201) {
          return left(
            FailuresServer.fromStatusCode(
              statusCode: e.response!.statusCode,
              message: response['message'].first,
            ),
          );
        }
        return left(FailuresServer.fromDioException(exType: e.type));
      }
      return left(Failures(errMessage: 'errMessage'));
    }
  }
}

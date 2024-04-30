import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:you_app/core/helper/failures_handling.dart';
import 'package:you_app/core/helper/shared_preferences.dart';
import 'package:you_app/core/utils/constant/app_key.dart';

class ApiServices {
  final Dio _dio = Dio();
  final String? token = SharedPref.getString(AppKey.userToken);
  Future<Either<Failures, Map<String, dynamic>>> get({
    required final String url,
  }) async {
    try {
      _dio.options.headers['content-Type'] = 'application/json';
      _dio.options.headers["x-access-token"] = "$token";
      final Response response = await _dio.get(url);
      final Map<String, dynamic> responseData = jsonDecode(
        response.toString(),
      );
      debugPrint('responseData: ${responseData}');

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

  Future<Either<Failures, Map<String, dynamic>>> post({
    required final String url,
    required final Map<String, dynamic> data,
  }) async {
    try {
      _dio.options.headers['content-Type'] = 'application/json';
      _dio.options.headers["x-access-token"] = "$token";
      final Response response = await _dio.post(url, data: data);
      final Map<String, dynamic> responseData = jsonDecode(response.toString());
      debugPrint('responseData: ${responseData}');
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

  Future<Either<Failures, Map<String, dynamic>>> put({
    required final String url,
    required final Map<String, dynamic> data,
  }) async {
    try {
      _dio.options.headers['content-Type'] = 'application/json';
      _dio.options.headers["x-access-token"] = "$token";
      final Response response = await _dio.put(url, data: data);
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

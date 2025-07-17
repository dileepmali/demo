import 'dart:io';
import 'package:dio/dio.dart';

class ErrorHandler {
  static String message(dynamic error) {
    if (error is DioError || error is DioException) {
      final dioError = error as DioException;

      switch (dioError.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          return "Connection timed out. Please try again.";

        case DioExceptionType.badResponse:
          final statusCode = dioError.response?.statusCode;
          final responseData = dioError.response?.data;

          if (statusCode == 400) {
            return responseData?['message'] ?? "Bad request";
          } else if (statusCode == 401) {
            return responseData?['message'] ?? "Unauthorized access";
          } else if (statusCode == 403) {
            return responseData?['message'] ?? "Forbidden request";
          } else if (statusCode == 404) {
            return responseData?['message'] ?? "Resource not found";
          } else if (statusCode == 422) {
            // Validation error
            if (responseData?['errors'] != null) {
              final errors = responseData['errors'] as Map<String, dynamic>;
              return errors.entries.first.value[0] ?? "Validation error";
            }
            return responseData?['message'] ?? "Validation error";
          } else if (statusCode == 500) {
            return "Server error. Please try again later.";
          } else {
            return responseData?['message'] ?? "Something went wrong";
          }

        case DioExceptionType.cancel:
          return "Request cancelled";

        case DioExceptionType.unknown:
        default:
          if (dioError.error is SocketException) {
            return "No internet connection";
          }
          return "Unexpected error occurred. Please try again.";
      }
    } else if (error is SocketException) {
      return "No internet connection";
    } else if (error is FormatException) {
      return "Bad response format";
    } else {
      return "Something went wrong. Please try again.";
    }
  }
}

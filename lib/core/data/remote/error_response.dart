import 'package:dio/dio.dart';

class ApiResponse<T> {
  final T data;
  final int? statusCode;
  final String? statusMessage;

  ApiResponse({required this.data, this.statusCode, this.statusMessage});

  factory ApiResponse.fromResponse(Response response) {
    return ApiResponse<T>(
      data: response.data,
      statusCode: response.statusCode,
      statusMessage: response.statusMessage,
    );
  }
}

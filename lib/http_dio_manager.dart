import 'package:dio/dio.dart';

class HttpDioManager {
  final Dio _dio = Dio();

  Future<dynamic> get(
    String url, {
    Map<String, dynamic>? queryParams,
    Map<String, dynamic>? headers,
  }) async {
    return _dio.get(
      url,
      queryParameters: queryParams,
    );
  }
}

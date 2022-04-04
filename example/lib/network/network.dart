import 'dart:convert';

import 'package:example/network/response.dart';
import 'package:dio/dio.dart' as dio;

class Network {
  final _dio = dio.Dio();

  Network(String url) {
    _initDio(url);
  }

  _initDio(String url) {
    _dio.options
      ..baseUrl = url
      ..connectTimeout = const Duration(seconds: 30).inMilliseconds
      ..receiveTimeout = const Duration(seconds: 30).inMilliseconds
      ..sendTimeout = const Duration(seconds: 30).inMilliseconds;

    _dio.interceptors.add(
      dio.LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
      ),
    );
  }

  Future<Response> get(
    String url, {
    required Map<String, dynamic> query,
    required Map<String, String> headers,
  }) async {
    return _dio
        .get(
          url,
          queryParameters: query,
          options: dio.Options(headers: headers),
        )
        .then(_toResponse);
  }

  Future<Response> post(
    String url, {
    Map<String, dynamic>? query,
    required Map<String, dynamic> body,
    required Map<String, String> headers,
  }) async {
    return _dio
        .post(
          url,
          queryParameters: query,
          data: body,
          options: dio.Options(headers: headers),
        )
        .then(_toResponse);
  }

  Response _toResponse(dio.Response r) {
    final response = Response.fromJson(jsonDecode(r.data));
    return response;
  }
}

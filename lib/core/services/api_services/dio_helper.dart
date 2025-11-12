import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart'; // Required for DefaultHttpClientAdapter
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../constant/api_link.dart';

class DioHelper {
  static final DioHelper _instance = DioHelper._internal();

  late Dio _dio;

  factory DioHelper() {
    return _instance;
  }

  DioHelper._internal() {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiLinks.server,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
        headers: {'Content-Type': 'application/json', 'Accept-Language': 'ar', 'Accept': 'application/json'},
      ),
    );

    (_dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
      final client = HttpClient();
      client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
      return client;
    };

    _dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
        request: true,
        compact: true,
        enabled: true,
      ),
    );
  }

  Dio get dio => _dio;
}

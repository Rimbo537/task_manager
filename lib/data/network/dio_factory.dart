import 'package:dio/dio.dart';

class ApiContainer {
  static const _baseUrl = 'https://to-do.softwars.com.ua/';
  // final BaseOptions _options = BaseOptions(
  //   baseUrl: _baseUrl,
  //   connectTimeout: const Duration(seconds: 32000),
  //   receiveTimeout: const Duration(seconds: 32000),
  //   headers: {
  //     Headers.contentTypeHeader: 'application/json',
  //     Headers.acceptHeader: 'application/json',
  //   },
  // );
  ApiContainer();
  Dio _client = Dio();

  Future<T> post<T>(
      {String? baseUrl,
      required String path,
      dynamic parameters,
      Map<String, dynamic>? queryParam}) async {
    try {
      _configureClient(baseUrl: baseUrl);
      var response = await _client.post(path,
          data: parameters, queryParameters: queryParam);
      return response as T;
    } catch (e) {
      throw e;
    }
  }

  Future<T> get<T>(
      {String? baseUrl,
      required String path,
      Map<String, dynamic>? queryParam}) async {
    try {
      _configureClient(baseUrl: baseUrl);
      var response = await _client.get(path, queryParameters: queryParam);
      return response as T;
    } catch (e) {
      throw e;
    }
  }

  Future<T> put<T>({
    String? baseUrl,
    Map<String, dynamic>? queryParam,
    required String path,
    final parameters,
  }) async {
    try {
      _configureClient(baseUrl: baseUrl);
      var response = await _client.put<String>(path,
          data: parameters, queryParameters: queryParam);
      return response as T;
    } catch (e) {
      throw e;
    }
  }

  Future<T> delete<T>(
      {String? baseUrl,
      Map<String, dynamic>? queryParam,
      required String path,
      dynamic parameters}) async {
    try {
      _configureClient(baseUrl: baseUrl);
      var response = await _client.delete<String>(path,
          data: parameters, queryParameters: queryParam);
      return response as T;
    } catch (e) {
      throw e;
    }
  }

  _configureClient({String? baseUrl, String? acceptType}) {
    _client.options.baseUrl = baseUrl ?? _baseUrl;
    _client.options.headers[Headers.acceptHeader] =
        acceptType != null ? acceptType : "application/json";
  }
}

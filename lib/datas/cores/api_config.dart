
import 'package:dio/dio.dart';
import 'package:flutter_hadith_app/datas/cores/api_constants.dart';
import 'package:flutter_hadith_app/datas/cores/api_custom_interceptor.dart';

class ApiConfig {
  static final ApiConfig _instance = ApiConfig._();
  late final Dio dio;

  ApiConfig._(){
    dio = Dio()
      ..options.baseUrl = ApiConstants.apiBaseUrl
      ..options.connectTimeout = ApiConstants.apiConnectionTimeout
      ..options.receiveTimeout = ApiConstants.apiReceiveTimeout
      ..interceptors.add(ApiCustomInterceptor.getInterceptor());
  }

  factory ApiConfig(){
    return _instance;
  }
}
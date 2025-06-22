import 'package:dio/dio.dart';
import 'package:ecommerce_app/api/web_services.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class NetworkModule {
  // provide network module dependencies
  @singleton
  @injectable
  BaseOptions provideBaseOptions() {
    return BaseOptions(
      baseUrl: 'https://ecommerce.routemisr.com',
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
    );
  }

  @singleton
  @injectable
  PrettyDioLogger providePrettyDioLogger() {
    return PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90,
    );
  }

  @singleton
  @injectable
  Dio provideDio(BaseOptions baseOptions, PrettyDioLogger prettyDioLogger) {
    var dio = Dio(baseOptions);
    dio.interceptors.add(prettyDioLogger);
    return dio;
  }

  @singleton
  @injectable
  WebServices provideWebServices(Dio client) => WebServices(client);
}

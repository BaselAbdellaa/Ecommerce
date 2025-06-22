import 'package:dio/dio.dart';
import 'package:ecommerce_app/api/models/Category%20Response/category_dto.dart';
import 'package:ecommerce_app/api/models/Category%20Response/category_response.dart';
import 'package:retrofit/retrofit.dart';

part 'web_services.g.dart';

@RestApi(baseUrl: 'https://ecommerce.routemisr.com')
abstract class WebServices {
  factory WebServices(Dio dio, {String? baseUrl}) = _WebServices;
  @GET("/api/v1/categories")
  Future<CategoryResponse> getCategories();
}

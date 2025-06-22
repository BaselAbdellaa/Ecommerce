import 'package:ecommerce_app/api/models/Category%20Response/category_dto.dart';
import 'package:ecommerce_app/api/models/Category%20Response/pagination_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category_response.g.dart';

@JsonSerializable()
class CategoryResponse {
  @JsonKey(name: "results")
  final int? results;
  @JsonKey(name: "metadata")
  final PaginationDTO? metadata;
  @JsonKey(name: "data")
  final List<CategoryDTO>? data;

  CategoryResponse({this.results, this.metadata, this.data});

  factory CategoryResponse.fromJson(Map<String, dynamic> json) {
    return _$CategoryResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CategoryResponseToJson(this);
  }
}

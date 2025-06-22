import 'package:json_annotation/json_annotation.dart';

part 'pagination_dto.g.dart';

@JsonSerializable()
class PaginationDTO {
  @JsonKey(name: "currentPage")
  final int? currentPage;
  @JsonKey(name: "numberOfPages")
  final int? numberOfPages;
  @JsonKey(name: "limit")
  final int? limit;

  PaginationDTO({this.currentPage, this.numberOfPages, this.limit});

  factory PaginationDTO.fromJson(Map<String, dynamic> json) {
    return _$PaginationDTOFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$PaginationDTOToJson(this);
  }
}

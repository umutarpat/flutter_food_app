import 'package:json_annotation/json_annotation.dart';

import 'food_model.dart';

part 'food_category_model.g.dart';

@JsonSerializable()
class FoodCategoryModel {
  @JsonKey(name: 'doc_id')
  String? docId;
  @JsonKey(name: 'image_url')
  String? imageUrl;
  String? name;

  FoodCategoryModel({this.docId, this.imageUrl, this.name});

  factory FoodCategoryModel.fromJson(Map<String, dynamic> json) {
    return _$FoodCategoryModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FoodCategoryModelToJson(this);
}

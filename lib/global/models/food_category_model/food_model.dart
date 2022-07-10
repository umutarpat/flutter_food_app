import 'package:json_annotation/json_annotation.dart';

part 'food_model.g.dart';

@JsonSerializable()
class FoodModel {
  @JsonKey(name: 'doc_id')
  String? docId;
  @JsonKey(name: 'doc_parent_id')
  String? docParentId;
  @JsonKey(name: 'basket_quantity')
  int? basketQuantity;
  @JsonKey(name: 'image_url')
  String? imageUrl;
  @JsonKey(name: 'is_favorite')
  bool? isFavorite;
  String? name;

  FoodModel(
      {this.docId,
      this.docParentId,
      this.basketQuantity,
      this.imageUrl,
      this.isFavorite,
      this.name});

  factory FoodModel.fromJson(Map<String, dynamic> json) =>
      _$FoodModelFromJson(json);

  Map<String, dynamic> toJson() => _$FoodModelToJson(this);
}

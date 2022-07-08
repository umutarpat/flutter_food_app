import 'package:json_annotation/json_annotation.dart';

part 'food.g.dart';

@JsonSerializable()
class Food {
  @JsonKey(name: 'basket_quantity')
  int? basketQuantity;
  @JsonKey(name: 'image_url')
  String? imageUrl;
  @JsonKey(name: 'is_favorite')
  bool? isFavorite;
  String? name;

  Food({this.basketQuantity, this.imageUrl, this.isFavorite, this.name});

  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);

  Map<String, dynamic> toJson() => _$FoodToJson(this);
}

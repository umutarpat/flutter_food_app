// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Food _$FoodFromJson(Map<String, dynamic> json) => Food(
      basketQuantity: json['basket_quantity'] as int?,
      imageUrl: json['image_url'] as String?,
      isFavorite: json['is_favorite'] as bool?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$FoodToJson(Food instance) => <String, dynamic>{
      'basket_quantity': instance.basketQuantity,
      'image_url': instance.imageUrl,
      'is_favorite': instance.isFavorite,
      'name': instance.name,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodModel _$FoodModelFromJson(Map<String, dynamic> json) => FoodModel(
      docId: json['doc_id'] as String?,
      docParentId: json['doc_parent_id'] as String?,
      basketQuantity: json['basket_quantity'] as int?,
      imageUrl: json['image_url'] as String?,
      isFavorite: json['is_favorite'] as bool?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$FoodModelToJson(FoodModel instance) => <String, dynamic>{
      'doc_id': instance.docId,
      'doc_parent_id': instance.docParentId,
      'basket_quantity': instance.basketQuantity,
      'image_url': instance.imageUrl,
      'is_favorite': instance.isFavorite,
      'name': instance.name,
    };

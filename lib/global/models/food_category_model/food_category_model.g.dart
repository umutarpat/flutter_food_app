// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodCategoryModel _$FoodCategoryModelFromJson(Map<String, dynamic> json) =>
    FoodCategoryModel(
      docId: json['doc_id'] as String?,
      foods: (json['foods'] as List<dynamic>?)
          ?.map((e) => Food.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageUrl: json['image_url'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$FoodCategoryModelToJson(FoodCategoryModel instance) =>
    <String, dynamic>{
      'doc_id': instance.docId,
      'foods': instance.foods,
      'image_url': instance.imageUrl,
      'name': instance.name,
    };

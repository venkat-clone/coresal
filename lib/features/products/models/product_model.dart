import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';

part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required int id,
    required String title,
    required double price,
    required String description,
    required String category,
    required String image,
    required ProductRatingModel rating,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

@freezed
class ProductRatingModel with _$ProductRatingModel {
  const factory ProductRatingModel({
    required double rate,
    required int count,
  }) = _ProductRatingModel;

  factory ProductRatingModel.fromJson(Map<String, dynamic> json) =>
      _$ProductRatingModelFromJson(json);
}

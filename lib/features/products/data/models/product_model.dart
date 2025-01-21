import 'package:delivery/features/products/data/models/product_rateing.dart';

import 'image_model.dart';

class ProductModel {
  final int productId;
  final int subCategoryId;
  final String description;
  final String name;
  final List<ImageModel> images;
  final List<ProductRating> ratings;

  ProductModel({
    required this.productId,
    required this.subCategoryId,
    required this.description,
    required this.name,
    required this.images,
    required this.ratings,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    var imagesFromJson = json['images'] as List;
    List<ImageModel> imageList =
        imagesFromJson.map((i) => ImageModel.fromJson(i)).toList();

    var ratingsFromJson = json['ratings'] as List;
    List<ProductRating> ratingList =
        ratingsFromJson.map((i) => ProductRating.fromJson(i)).toList();

    return ProductModel(
      productId: json['product_id'],
      subCategoryId: json['sub_category_id'],
      description: json['description'],
      name: json['name'],
      images: imageList,
      ratings: ratingList,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'product_id': productId,
      'sub_category_id': subCategoryId,
      'description': description,
      'name': name,
      'images': images.map((i) => i.toJson()).toList(),
      'ratings': ratings.map((i) => i.toJson()).toList(),
    };
  }
}

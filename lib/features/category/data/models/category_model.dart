import '../../domain/entities/category.dart';

class CategoryModel extends Category {
  CategoryModel({
    required super.category,
    required super.name,
    required super.image,
  });

  // تحويل من JSON إلى CategoryModel
  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      category: json['category'] as int,
      name: json['name'] as String,
      image: json['image'] as String,
    );
  }

  // تحويل من CategoryModel إلى JSON
  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'name': name,
      'image': image,
    };
  }
}

class ImageModel {
  final int id;
  final String image;
  final int productId;

  ImageModel({required this.id, required this.image, required this.productId});

  factory ImageModel.fromJson(Map<String, dynamic> json) {
    return ImageModel(
      id: json['id'],
      image: json['image'],
      productId: json['product_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image': image,
      'product_id': productId,
    };
  }
}

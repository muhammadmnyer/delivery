class ProductRating {
  final int productId;
  final int userId;
  final int rate;

  ProductRating(
      {required this.productId, required this.userId, required this.rate});

  factory ProductRating.fromJson(Map<String, dynamic> json) {
    return ProductRating(
      productId: json['product_id'],
      userId: json['user_id'],
      rate: json['rate'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'product_id': productId,
      'user_id': userId,
      'rate': rate,
    };
  }
}

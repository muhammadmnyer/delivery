import '../../domain/entities/order.dart';
import '../../../products/data/models/product_model.dart';

class OrderModel extends Order {
  OrderModel({
    required super.orderId,
    required super.userId,
    required super.driverId,
    required super.addressId,
    required super.status,
    required super.products,
    required super.createdAt,
  });

  // تحويل من JSON إلى OrderModel
  factory OrderModel.fromJson(Map<String, dynamic> json) {
    var productsFromJson = json['products'] as List;
    List<ProductModel> productList =
        productsFromJson.map((i) => ProductModel.fromJson(i)).toList();

    return OrderModel(
      orderId: json['order_id'],
      userId: json['user_id'],
      driverId: json['driver_id'],
      addressId: json['address_id'],
      status: json['status'],
      createdAt: DateTime.parse(json['created_at']),
      products: productList,
    );
  }

  // تحويل من OrderModel إلى JSON
  Map<String, dynamic> toJson() {
    return {
      'order_id': orderId,
      'user_id': userId,
      'driver_id': driverId,
      'address_id': addressId,
      'status': status,
      'created_at': createdAt.toIso8601String(),
      'products': products.map((product) => product.toJson()).toList(),
    };
  }
}

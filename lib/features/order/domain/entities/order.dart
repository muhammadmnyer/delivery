import '../../../products/data/models/product_model.dart';

class Order {
  final int orderId;
  final int userId;
  final int driverId;
  final int addressId;
  final String status;
  final List<ProductModel> products;
  final DateTime createdAt;

  Order({
    required this.orderId,
    required this.userId,
    required this.driverId,
    required this.addressId,
    required this.status,
    required this.products,
    required this.createdAt,
  });
}

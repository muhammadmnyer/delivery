import '../../domain/entities/adress.dart';

class AddressModel extends Address {
  AddressModel({
    required super.addressId,
    required super.userId,
    required super.title,
    required super.description,
    required super.isDefault,
  });

  // تحويل من JSON إلى AddressModel
  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      addressId: json['address_id'] as int,
      userId: json['user_id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      isDefault: json['is_default'] as bool,
    );
  }

  // تحويل من AddressModel إلى JSON
  Map<String, dynamic> toJson() {
    return {
      'address_id': addressId,
      'user_id': userId,
      'title': title,
      'description': description,
      'is_default': isDefault,
    };
  }
}

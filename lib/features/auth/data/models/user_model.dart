import '../../domain/entities/user.dart';

class UserModel extends User {
  UserModel({
    required super.userId,
    required super.name,
    required super.phone,
  });

  // تحويل من JSON إلى UserModel
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      userId: json['user_id'] as int,
      name: json['name'] as String,
      phone: json['phone'] as String,
    );
  }

  // تحويل من UserModel إلى JSON
  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'name': name,
      'phone': phone,
    };
  }
}

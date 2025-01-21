import '../../../auth/domain/entities/user.dart';

class UserModel extends User {
  UserModel({
    required super.userId,
    required super.name,
    required super.phone,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      userId: json['user_id'] as int,
      name: json['name'] as String,
      phone: json['phone'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'name': name,
      'phone': phone,
    };
  }
}

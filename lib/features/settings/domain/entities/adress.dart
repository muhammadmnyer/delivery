class Address {
  final int addressId;
  final int userId;
  final String title;
  final String description;
  final bool isDefault;

  Address({
    required this.addressId,
    required this.userId,
    required this.title,
    required this.description,
    required this.isDefault,
  });
}

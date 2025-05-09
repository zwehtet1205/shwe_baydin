import 'dart:convert';

class User {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String role;
  final String? otp;
  final String address;
  final String hour;
  final String minute;
  final String dob;
  final List<Map<String, String>> images;
  final String profile;
  final bool isVerified;
  final String createdAt;
  final String updatedAt;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.role,
    this.otp,
    required this.address,
    required this.hour,
    required this.minute,
    required this.dob,
    required this.images,
    required this.profile,
    required this.isVerified,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      role: json['role'],
      otp: json['otp'],
      address: json['address'],
      hour: json['hour'],
      minute: json['minute'],
      dob: json['dob'],
      images: List<Map<String, String>>.from(json['image'].map((img) => Map<String, String>.from(img))),
      profile: json['profile'],
      isVerified: json['is_verified'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
}
class AuthResponse {
  final bool success;
  final String? message;
  final String? token;
  final String? userId;

  AuthResponse({
    required this.success,
    this.message,
    this.token,
    this.userId,
  });

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    return AuthResponse(
      success: json['success'] ?? false,
      message: json['message'],
      token: json['token'],
      userId: json['user_id'],
    );
  }
}


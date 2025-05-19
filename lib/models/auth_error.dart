class AuthError {
  final String message;
  final String? code;

  AuthError({
    required this.message,
    this.code,
  });

  factory AuthError.fromJson(Map<String, dynamic> json) {
    return AuthError(
      message: json['message'] ?? 'An error occurred',
      code: json['code'],
    );
  }
}

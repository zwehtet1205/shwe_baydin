import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../layouts/change_password_layout.dart';
import '../widgets/language_switcher.dart';
import '../widgets/illustration.dart';
import '../utils/circle_clipper.dart';
import '../screens/login_screen.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  // Constants for consistent spacing and sizing
  static const Color _brownColor = Color(0xFF4E342E);
  static const double _mediumSpacing = 12.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: ClipPath(
                clipper: QuarterCircleClipper(),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.2,
                  color: _brownColor,
                ),
              ),
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [const LanguageSwitcher()],
                    ),
                    const Illustration(imagePath: "assets/intro_with_email_otp.png",),
                    ChangePasswordLayout(
                      onSubmit: () {
                        // Placeholder for password change logic
                        Get.offAll(() => const LoginScreen());
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class QuarterCircleClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final Path path = Path();
//     path.moveTo(size.width, 0);
//     path.lineTo(size.width, size.height);
//     path.lineTo(0, size.height);
//     path.quadraticBezierTo(0, 0, size.width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }
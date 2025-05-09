import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../layouts/login_layout.dart';
import '../widgets/language_switcher.dart';
import '../widgets/illustration.dart';
import '../utils/circle_clipper.dart';
import '../screens/home_screen.dart';
import '../screens/intro_screen.dart';
import '../screens/forget_password_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                    const Illustration(imagePath: "assets/intro_with_phone_otp.png",),
                    LoginLayout(
                      onLogin: () {
                        Get.off(() => const HomeScreen());
                        // Placeholder for login logic (to be implemented)
                        print("Login successful");
                      },
                      onRegister: () {
                        Get.off(() => const IntroScreen());
                      },
                      onForgetPassword: () {
                        Get.off(() => const ForgetPasswordScreen());
                        // Placeholder for forget password logic (to be implemented)
                        print("Navigate to forget password");
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
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../layouts/otp_verification_layout.dart';
import '../widgets/illustration.dart';
import '../widgets/language_switcher.dart';
import '../screens/register_screen.dart';
import '../screens/change_password_screen.dart';
import '../utils/circle_clipper.dart';

class OtpVerificationScreen extends StatelessWidget {
  final bool isMobile;

  const OtpVerificationScreen({super.key, required this.isMobile});

  // Constants for consistent spacing and sizing
  static const Color _brownColor = Color(0xFF4E342E);
  static const double _mediumSpacing = 12.0;

  @override
  Widget build(BuildContext context) {
    // Check if the previous route is ForgetPasswordScreen to determine the flow
    bool isForgetPasswordFlow = Get.previousRoute.contains('ForgetPasswordScreen');

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
                    Illustration(imagePath: isMobile ? 'assets/intro_with_phone_otp.png' : 'assets/intro_with_email.png'),
                    OtpVerificationLayout(
                      isMobile: isMobile,
                      onVerifyPressed: () {
                        if (isForgetPasswordFlow) {
                          Get.off(() => const ChangePasswordScreen());
                        } else {
                          Get.off(() => const RegisterScreen());
                        }
                      },
                      onResendPressed: () {
                        // Implement resend OTP logic
                      },
                      onChangePressed: () {
                        Get.back();
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
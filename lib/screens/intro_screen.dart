import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../l10n/app_localizations.dart';
import '../layouts/auth_form_layout.dart';
import '../widgets/language_switcher.dart';
import '../widgets/illustration.dart';
import '../utils/circle_clipper.dart';
import '../controllers/auth_controller.dart';
import 'otp_verification_screen.dart';
import 'login_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  // Constants for consistent spacing and sizing
  static const Color _brownColor = Color(0xFF4E342E);
  static const double _padding = 20.0;
  static const double _mediumSpacing = 12.0;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final RxBool isMobile = true.obs;
    final authController = Get.find<AuthController>();

    return Obx(
      () => Scaffold(
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
                      Illustration(imagePath: isMobile.value ? 'assets/intro_with_phone.png' : 'assets/intro_with_email.png'),
                      AuthFormLayout(
                        isMobile: isMobile.value,
                        onPrimaryButtonPressed: () async {
                          if (authController.isPhoneNumberValid.value) {
                            await authController.sendOTP();
                            if (authController.isOtpVerified.value) {
                              Get.to(() => OtpVerificationScreen(isMobile: isMobile.value));
                            }
                          }
                        },
                        onSecondaryButtonPressed: () {
                          isMobile.value = !isMobile.value;
                        },
                        onLogin: () {
                          Get.off(() => const LoginScreen());
                        },
                        onTextFieldChange: (value) {
                          authController.validatePhoneNumber(value);
                        },
                        isTextFiledEnabled: authController.isPhoneNumberValid.value,
                      ),
                      if (authController.errorMessage.isNotEmpty)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: _padding, vertical: _mediumSpacing),
                          child: Text(
                            authController.errorMessage.value,
                            style: const TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      if (authController.isLoading.value)
                        const Padding(
                          padding: EdgeInsets.all(_padding),
                          child: CircularProgressIndicator(),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
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
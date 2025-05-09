import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../l10n/app_localizations.dart';
import '../layouts/auth_form_layout.dart';
import '../widgets/language_switcher.dart';
import '../widgets/illustration.dart';
import '../utils/circle_clipper.dart';
import 'otp_verification_screen.dart';
import 'login_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  // Constants for consistent spacing and sizing
  static const Color _brownColor = Color(0xFF4E342E);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final RxBool isMobile = true.obs;

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
                        onPrimaryButtonPressed: () {
                          Get.to(() => OtpVerificationScreen(isMobile: isMobile.value));
                        },
                        onSecondaryButtonPressed: () {
                          isMobile.value = !isMobile.value;
                        },
                        onLogin: (){
                          Get.off(() => const LoginScreen());
                        },
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
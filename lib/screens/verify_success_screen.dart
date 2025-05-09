import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shwe_baydin/screens/register_screen.dart';
import '../layouts/verify_success_layout.dart';
import 'register_screen.dart';

class VerifySuccessScreen extends StatelessWidget {
  final bool isMobile;
  const VerifySuccessScreen({
    super.key,
    this.isMobile = true
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VerifySuccessLayout(
        onContinue: () {
          Get.off(() => const RegisterScreen());
        },
        isMobile: isMobile,
      ),
    );
  }
}
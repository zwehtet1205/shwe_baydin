import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shwe_baydin/l10n/app_localizations.dart'; 

class SentOtpScreen extends StatelessWidget {
  const SentOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final l10n = AppLocalizations.of(context);
    
    return Scaffold(
      body: Center(
        child: Text('OTP Sent!'),
      ),
    );
  }
}
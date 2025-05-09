import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../l10n/app_localizations.dart';
import '../widgets/illustration.dart';

class VerifySuccessLayout extends StatelessWidget {
  final bool isMobile;
  final VoidCallback onContinue;

  const VerifySuccessLayout({super.key, required this.onContinue, this.isMobile = true});

  // Constants for consistent spacing and sizing
  static const double _padding = 20.0;
  static const double _mediumSpacing = 12.0;
  static const Color _brownColor = Color(0xFF4E342E);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final isBurmese = Get.locale?.languageCode == 'my';

    return Container(
      padding: const EdgeInsets.all(_padding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Illustration(imagePath: 'assets/verify_success.png',),
          const SizedBox(height: _mediumSpacing),
          CircleAvatar(
            radius: 30,
            backgroundColor: _brownColor,
            child: const Icon(Icons.check, color: Colors.white, size: 40),
          ),
          const SizedBox(height: _mediumSpacing),
          Text(
            isMobile ? l10n.mobileSuccessMessage : l10n.emailSuccessMessage,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
              // fontFamily: isBurmese ? 'NotoSansMyanmar' : null,
            ),
          ),
          const SizedBox(height: _mediumSpacing * 2),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onContinue,
              style: ElevatedButton.styleFrom(
                backgroundColor: _brownColor,
                padding: const EdgeInsets.symmetric(vertical: _mediumSpacing),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                l10n.continueNext,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  // fontFamily: isBurmese ? 'NotoSansMyanmar' : null,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../l10n/app_localizations.dart';

class ForgetPasswordLayout extends StatelessWidget {
  final VoidCallback onSubmitPhone;

  const ForgetPasswordLayout({super.key, required this.onSubmitPhone});

  // Constants for consistent spacing and sizing
  static const double _padding = 20.0;
  static const double _smallSpacing = 6.0;
  static const double _mediumSpacing = 12.0;
  static const Color _brownColor = Color(0xFF4E342E);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Container(
      height: MediaQuery.of(context).size.height * 0.50,
      padding: const EdgeInsets.symmetric(horizontal: _padding, vertical: _mediumSpacing),
      decoration: const BoxDecoration(
        color: _brownColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: _mediumSpacing),
                  Text(
                    l10n.forgetPasswordTitle,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: _smallSpacing),
                  Text(
                    l10n.forgetPasswordSubtitle,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: _mediumSpacing),
                  TextField(
                    decoration: InputDecoration(
                      hintText: l10n.enterMobileNumber,
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(height: _mediumSpacing),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: onSubmitPhone,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow[700],
                        padding: const EdgeInsets.symmetric(vertical: _mediumSpacing),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        l10n.sendOtp,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            l10n.termsAndPrivacy,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white54,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
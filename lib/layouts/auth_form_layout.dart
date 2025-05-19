import 'package:flutter/material.dart';
import 'package:shwe_baydin/models/country_code.dart';
import '../l10n/app_localizations.dart';
import '../widgets/divider_with_text.dart';
import '../widgets/phone_input.dart';
import '../widgets/email_input.dart';

class AuthFormLayout extends StatelessWidget {
  final bool isMobile;
  final VoidCallback onPrimaryButtonPressed;
  final VoidCallback onSecondaryButtonPressed;
  final VoidCallback onLogin;
  final ValueChanged<String> onTextFieldChange;
  final bool isTextFiledEnabled;


  AuthFormLayout({
    super.key,
    required this.isMobile,
    required this.onPrimaryButtonPressed,
    required this.onSecondaryButtonPressed,
    required this.onLogin,
    required this.onTextFieldChange,
    required this.isTextFiledEnabled
  });

  // Constants for consistent spacing and sizing
  static const double _padding = 20.0;
  static const double _smallSpacing = 6.0;
  static const double _mediumSpacing = 12.0;
  static const Color _brownColor = Color(0xFF4E342E);

  // Country code for mobile number input
  final List<CountryCode> _countryCodes =   [
    CountryCode(
      countryName: 'Myanmar',
      countryCode: 'MM',
      dialCode: '+95',
      countryFlag: 'assets/mm_flag.png',
    ),
    CountryCode(
      countryName: 'United States',
      countryCode: 'US',
      dialCode: '+1',
      countryFlag: 'assets/us_flag.png',
    ),
  ];

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: _mediumSpacing),
                Text(
                  l10n.welcomeMessage,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: _smallSpacing),
                Text(
                  isMobile ? l10n.submitMobileNumber : l10n.submitEmail,
                  style: const TextStyle(fontSize: 16, color: Colors.white70),
                ),
                const SizedBox(height: _smallSpacing),
                DividerWithText(text: l10n.logInOrSignUp),
                const SizedBox(height: _mediumSpacing),
                isMobile ?  PhoneInput(countryCodes : _countryCodes, onTextFieldChange: onTextFieldChange, isTextFiledEnabled: isTextFiledEnabled) : const EmailInput(),
                const SizedBox(height: _mediumSpacing),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: onPrimaryButtonPressed,
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
                const SizedBox(height: _mediumSpacing),
                DividerWithText(text: l10n.or),
                const SizedBox(height: _mediumSpacing),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: onSecondaryButtonPressed,
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.white),
                      padding: const EdgeInsets.symmetric(vertical: _mediumSpacing),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          isMobile ? Icons.email_outlined : Icons.phone_outlined,
                          color: Colors.white,
                        ),
                        const SizedBox(width: _mediumSpacing),
                        Text(
                          isMobile ? l10n.continueWithEmail : l10n.continueWithMobileNumber,
                          style: const TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: _mediumSpacing),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      l10n.alreadyHaveAccount,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white54,
                        // fontFamily: isBurmese ? 'NotoSansMyanmar' : null,
                      ),
                    ),
                    GestureDetector(
                      onTap: onLogin,
                      child: Text(
                        l10n.login,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.redAccent,
                          // fontFamily: isBurmese ? 'NotoSansMyanmar' : null,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
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
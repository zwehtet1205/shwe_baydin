import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../l10n/app_localizations.dart';
import '../widgets/otp_input.dart';

class OtpVerificationLayout extends StatelessWidget {
  final bool isMobile;
  final VoidCallback onVerifyPressed;
  final VoidCallback onResendPressed;
  final VoidCallback onChangePressed;

  const OtpVerificationLayout({
    super.key,
    required this.isMobile,
    required this.onVerifyPressed,
    required this.onResendPressed,
    required this.onChangePressed,
  });

  // Constants for consistent spacing and sizing
  static const double _padding = 20.0;
  static const double _smallSpacing = 6.0;
  static const double _mediumSpacing = 12.0;
  static const Color _brownColor = Color(0xFF4E342E);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final isBurmese = Get.locale?.languageCode == 'my';

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
                  l10n.otpVerification,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    // fontFamily: isBurmese ? 'NotoSansMyanmar' : null,
                  ),
                ),
                const SizedBox(height: _smallSpacing),
                Text(
                  isMobile ? l10n.otpSentToNumber : l10n.otpSentToEmail,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                    // fontFamily: isBurmese ? 'NotoSansMyanmar' : null,
                  ),
                  textAlign: TextAlign.start,
                ),
                // const SizedBox(height: _smallSpacing),
                // Text(
                //   '00:56',
                //   style: TextStyle(
                //     fontSize: 16,
                //     color: Colors.white70,
                //     // fontFamily: isBurmese ? 'NotoSansMyanmar' : null,
                //   ),
                //   textAlign: TextAlign.center,
                // ),
                const SizedBox(height: _mediumSpacing),
                const OtpInput(),
                const SizedBox(height: _mediumSpacing),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: onVerifyPressed,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow[700],
                      padding: const EdgeInsets.symmetric(vertical: _mediumSpacing),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      l10n.verifyOtp,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        // fontFamily: isBurmese ? 'NotoSansMyanmar' : null,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: _mediumSpacing),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      l10n.didNotReceiveCode,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white54,
                        // fontFamily: isBurmese ? 'NotoSansMyanmar' : null,
                      ),
                    ),
                    GestureDetector(
                      onTap: onResendPressed,
                      child: Text(
                        l10n.resendOtp,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.redAccent,
                          // fontFamily: isBurmese ? 'NotoSansMyanmar' : null,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: _mediumSpacing),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: onChangePressed,
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
                          isMobile ? Icons.phone_outlined : Icons.email_outlined,
                          color: Colors.white,
                        ),
                        const SizedBox(width: _mediumSpacing),
                        Text(
                          isMobile ? l10n.changeMobileNumber : l10n.changeEmail,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            // fontFamily: isBurmese ? 'NotoSansMyanmar' : null,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            l10n.termsAndPrivacy,
            style: TextStyle(
              fontSize: 12,
              color: Colors.white54,
              fontWeight: FontWeight.w500,
              // fontFamily: isBurmese ? 'NotoSansMyanmar' : null,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
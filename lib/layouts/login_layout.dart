import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../l10n/app_localizations.dart';

class LoginLayout extends StatelessWidget {
  final VoidCallback onLogin;
  final VoidCallback onRegister;
  final VoidCallback onForgetPassword;

  const LoginLayout({super.key, required this.onLogin, required this.onForgetPassword,required this.onRegister});

  // Constants for consistent spacing and sizing
  static const double _padding = 20.0;
  static const double _smallSpacing = 6.0;
  static const double _mediumSpacing = 12.0;
  static const Color _brownColor = Color(0xFF4E342E);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final RxBool passwordVisible = false.obs;

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
                    l10n.loginTitle,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: _smallSpacing),
                  Text(
                    l10n.loginSubtitle,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: _mediumSpacing),
                  TextField(
                    decoration: InputDecoration(
                      hintText: l10n.phoneOrEmail,
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: _mediumSpacing),
                  Obx(
                    () => TextField(
                      decoration: InputDecoration(
                        hintText: l10n.password,
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            passwordVisible.value ? Icons.visibility : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            passwordVisible.value = !passwordVisible.value;
                          },
                        ),
                      ),
                      obscureText: !passwordVisible.value,
                    ),
                  ),
                  const SizedBox(height: _smallSpacing),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: true, 
                            onChanged: (value) {},
                            checkColor: Colors.redAccent,
                            activeColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                              
                            ),
                            side: const BorderSide(
                              color: Colors.white,
                              width: 1.5,
                            ),
                          ),
                          Text(
                            l10n.rememberMe,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.redAccent,
                            ),
                          ),
                        ],
                      ),
      
                      TextButton(
                      onPressed: onForgetPassword,
                      child: Text(
                        l10n.forgetPassword,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                    ]
                  ),
                  const SizedBox(height: _mediumSpacing),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: onLogin,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow[700],
                        padding: const EdgeInsets.symmetric(vertical: _mediumSpacing),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        l10n.login,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: _mediumSpacing),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      l10n.doNotHaveAccount,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white54,
                        // fontFamily: isBurmese ? 'NotoSansMyanmar' : null,
                      ),
                    ),
                    GestureDetector(
                      onTap: onRegister,
                      child: Text(
                        l10n.register,
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
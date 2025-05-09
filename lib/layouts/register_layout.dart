import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../l10n/app_localizations.dart';

class RegisterLayout extends StatelessWidget {
  final VoidCallback onRegister;

  const RegisterLayout({super.key, required this.onRegister});

  // Constants for consistent spacing and sizing
  static const double _padding = 20.0;
  static const double _smallSpacing = 6.0;
  static const double _mediumSpacing = 12.0;
  static const Color _brownColor = Color(0xFF4E342E);

  Future<void> _selectDate(BuildContext context, RxString selectedDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      selectedDate.value = "${picked.day}/${picked.month}/${picked.year}";
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final isBurmese = Get.locale?.languageCode == 'my';
    final RxString selectedDate = ''.obs;
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
                    l10n.registerTitle,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      // fontFamily: isBurmese ? 'NotoSansMyanmar' : null,
                    ),
                  ),
                  const SizedBox(height: _smallSpacing),
                  Text(
                    l10n.registerSubtitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                      // fontFamily: isBurmese ? 'NotoSansMyanmar' : null,
                    ),
                  ),
                  const SizedBox(height: _mediumSpacing),
                  TextField(
                    decoration: InputDecoration(
                      hintText: l10n.username,
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
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
                  const SizedBox(height: _mediumSpacing),
                  Obx(
                    () => TextField(
                      readOnly: true,
                      decoration: InputDecoration(
                        hintText: selectedDate.value.isEmpty ? l10n.birthdate : selectedDate.value,
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.calendar_today),
                          onPressed: () => _selectDate(context, selectedDate),
                        ),
                      ),
                      onTap: () => _selectDate(context, selectedDate),
                    ),
                  ),
                  const SizedBox(height: _mediumSpacing),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: onRegister,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow[700],
                        padding: const EdgeInsets.symmetric(vertical: _mediumSpacing),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        l10n.register,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          // fontFamily: isBurmese ? 'NotoSansMyanmar' : null,
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
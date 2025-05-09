import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../l10n/app_localizations.dart';

class LanguageSwitcher extends StatelessWidget {
  final double padding;
  static const Color _brownColor = Color(0xFF4E342E);

  const LanguageSwitcher({super.key, this.padding = 20.0});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding, vertical: 4.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        decoration: BoxDecoration(
          color: _brownColor.withOpacity(0.9),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4.0,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: DropdownButton<String>(
          value: Get.locale?.languageCode ?? 'en',
          items: [
            DropdownMenuItem(value: 'en', child: Text(l10n.english)),
            DropdownMenuItem(
              value: 'my',
              child: Text(
                l10n.burmese,
                // style: const TextStyle(fontFamily: 'NotoSansMyanmar'),
              ),
            ),
          ],
          onChanged: (String? newValue) {
            if (newValue != null) {
              print('Changing locale to: $newValue'); // Debug print
              Get.updateLocale(Locale(newValue));
            }
          },
          dropdownColor: _brownColor,
          style: const TextStyle(color: Colors.white),
          icon: const Icon(Icons.language, color: Colors.white),
          underline: Container(),
        ),
      ),
    );
  }
}
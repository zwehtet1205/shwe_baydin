import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({super.key});

  @override
  Widget build(BuildContext context) {

    // localization
    final l10n = AppLocalizations.of(context);


    return TextField(
      decoration: InputDecoration(
        hintText: l10n.enterEmail,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }
}
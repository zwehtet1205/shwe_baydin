import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../l10n/app_localizations.dart';
import '../models/user.dart';

class UpdateProfileScreen extends StatelessWidget {
  final User user;
  const UpdateProfileScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final TextEditingController nameController = TextEditingController(text: user.name);
    final TextEditingController emailController = TextEditingController(text: user.email);
    final TextEditingController phoneController = TextEditingController(text: user.phone);
    final TextEditingController addressController = TextEditingController(text: user.address);
    final TextEditingController dobController = TextEditingController(text: user.dob);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.updatePreferences),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.updatePreferences,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            _buildTextField(l10n.name, nameController, context),
            const SizedBox(height: 16),
            _buildTextField(l10n.email, emailController, context),
            const SizedBox(height: 16),
            _buildTextField(l10n.phone, phoneController, context),
            const SizedBox(height: 16),
            _buildTextField(l10n.address, addressController, context),
            const SizedBox(height: 16),
            _buildTextField(l10n.dob, dobController, context),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.snackbar(l10n.success, l10n.preferencesUpdated);
                  Get.back();
                },
                child: Text(l10n.save),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller, BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
    );
  }
}
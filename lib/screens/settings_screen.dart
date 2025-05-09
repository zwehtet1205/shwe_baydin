import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../l10n/app_localizations.dart';
import '../screens/profile_screen.dart';
import '../models/user.dart';
import '../widgets/bottom_nav_bar.dart';
import '../controllers/nav_controller.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.settings,
                  style: Theme.of(context).textTheme.headlineMedium,
                  
                ),
                const SizedBox(height: 24),
                _buildSettingTile(
                  context,
                  l10n.profilePreferences,
                  Icons.person,
                  () => Get.to(() => ProfileScreen()),
                ),
                _buildSettingTile(
                  context,
                  l10n.languagePreferences,
                  Icons.language,
                  () {
                    Get.snackbar(l10n.languagePreferences, l10n.comingSoon);
                  },
                ),
                _buildSettingTile(
                  context,
                  l10n.privacyAndPolicies,
                  Icons.privacy_tip,
                  () {
                    Get.snackbar(l10n.privacyAndPolicies, l10n.comingSoon);
                  },
                ),
                _buildSettingTile(
                  context,
                  l10n.aboutUs,
                  Icons.info,
                  () {
                    Get.snackbar(l10n.aboutUs, l10n.comingSoon);
                  },
                ),
                _buildSettingTile(
                  context,
                  l10n.contactUs,
                  Icons.contact_mail,
                  () {
                    Get.snackbar(l10n.contactUs, l10n.comingSoon);
                  },
                ),
                _buildSettingTile(
                  context,
                  l10n.logout,
                  Icons.logout,
                  () {
                    Get.snackbar(l10n.others, l10n.comingSoon);
                  },
                ),

              ],
            ),
          ),
        ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

  Widget _buildSettingTile(
    BuildContext context,
    String title,
    IconData icon,
    VoidCallback onTap,
  ) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Icon(icon, color: Theme.of(context).primaryColor),
        title: Text(title, style: Theme.of(context).textTheme.bodyMedium),
        trailing: const Icon(Icons.chevron_right, color: Colors.grey),
        onTap: onTap,
      ),
    );
  }
}
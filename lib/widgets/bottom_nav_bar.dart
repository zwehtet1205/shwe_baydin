import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/nav_controller.dart';
import '../l10n/app_localizations.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final NavController navController = Get.find<NavController>();

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Theme.of(context).primaryColor, Theme.of(context).colorScheme.secondary],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Obx(() => BottomNavigationBar(
        selectedItemColor: Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
        unselectedItemColor: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
        backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        elevation: Theme.of(context).bottomNavigationBarTheme.elevation,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: const Icon(Icons.home), label: l10n.home),
          BottomNavigationBarItem(icon: const Icon(Icons.people), label: l10n.astrologersTab),
          BottomNavigationBarItem(icon: const Icon(Icons.notifications), label: l10n.notifications),
          BottomNavigationBarItem(icon: const Icon(Icons.settings), label: l10n.settings),
        ],
        currentIndex: navController.currentIndex.value,
        onTap: (index) => navController.changeTab(index),
      )),
    );
  }
}
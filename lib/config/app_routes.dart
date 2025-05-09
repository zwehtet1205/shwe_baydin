import 'package:get/get.dart';
import '../screens/home_screen.dart';
import '../screens/astrologers_screen.dart';
import '../screens/notifications_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/settings_screen.dart';

class AppRoutes {
  static const String home = '/home';
  static const String astrologers = '/astrologers';
  static const String notifications = '/notifications';
  static const String profile = '/profile';
  static const String settings = '/settings';

  static final List<GetPage> routes = [
    GetPage(name: home, page: () => const HomeScreen()),
    GetPage(name: astrologers, page: () => const AstrologersScreen()),
    GetPage(name: notifications, page: () => const NotificationsScreen()),
    GetPage(name: profile, page: () => const ProfileScreen()),
    GetPage(name: settings, page: () => const SettingsScreen()),
  ];
}
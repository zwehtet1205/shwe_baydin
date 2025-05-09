import 'package:get/get.dart';

class NavController extends GetxController {
  var currentIndex = 0.obs;

  void changeTab(int index) {
    currentIndex.value = index;
    switch (index) {
      case 0:
        Get.offNamed('/home');
        break;
      case 1:
        Get.offNamed('/astrologers');
        break;
      case 2:
        Get.offNamed('/notifications');
        break;
      case 3:
        Get.offNamed('/settings');
        break;
    }
  }
}
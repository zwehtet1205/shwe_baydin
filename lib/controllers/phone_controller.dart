import 'package:get/get.dart';

class PhoneController extends GetxController {
  var selectedCountryCode = '+95'.obs; // Default to Myanmar (+95)

  void updateCountryCode(String newCode) {
    selectedCountryCode.value = newCode;
  }
}
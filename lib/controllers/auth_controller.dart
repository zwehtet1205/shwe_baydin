import 'package:get/get.dart';
import '../services/api_service.dart';
import '../models/auth_response.dart';
import '../models/auth_error.dart';

class AuthController extends GetxController {
  final ApiService _apiService = ApiService();
  
  // State management
  final RxString phoneNumber = ''.obs;
  final RxString otp = ''.obs;
  final RxBool isLoading = false.obs;
  final RxBool isOtpVerified = false.obs;
  final RxString errorMessage = ''.obs;
  final RxBool showOtpInput = false.obs;

  // Form validation
  final RxBool isPhoneNumberValid = false.obs;
  final RxBool isOtpValid = false.obs;

  // Phone number validation
  void validatePhoneNumber(String value) {
    // Add your phone number validation logic here
    // Example: Check if it starts with country code
    isPhoneNumberValid.value = value.isNotEmpty && value.startsWith('+');
  }

  // OTP validation
  void validateOTP(String value) {
    // Add your OTP validation logic here
    isOtpValid.value = value.length == 6;
  }

  // Send OTP
  Future<void> sendOTP() async {
    try {
      if (!isPhoneNumberValid.value) {
        errorMessage.value = 'Please enter a valid phone number';
        return;
      }

      isLoading.value = true;
      final response = await _apiService.sendOTP(phoneNumber.value);
      
      if (response['success'] ?? false) {
        showOtpInput.value = true;
        errorMessage.value = '';
      } else {
        errorMessage.value = response['message'] ?? 'Failed to send OTP';
      }
    } catch (e) {
      errorMessage.value = 'Error: ${e.toString()}';
    } finally {
      isLoading.value = false;
    }
  }

  // Verify OTP
  Future<void> verifyOTP() async {
    try {
      if (!isOtpValid.value) {
        errorMessage.value = 'Please enter a valid OTP';
        return;
      }

      isLoading.value = true;
      final response = await _apiService.verifyOTP(phoneNumber.value, otp.value);
      
      if (response['success'] ?? false) {
        isOtpVerified.value = true;
        errorMessage.value = '';
        // Navigate to next screen or perform login
        Get.offAllNamed('/home');
      } else {
        errorMessage.value = response['message'] ?? 'Invalid OTP';
      }
    } catch (e) {
      errorMessage.value = 'Error: ${e.toString()}';
    } finally {
      isLoading.value = false;
    }
  }

  // Clear all fields
  void clearFields() {
    phoneNumber.value = '';
    otp.value = '';
    showOtpInput.value = false;
    isOtpVerified.value = false;
    errorMessage.value = '';
  }
}

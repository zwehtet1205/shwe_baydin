import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../l10n/app_localizations.dart';
import '../controllers/phone_controller.dart';
import '../models/country_code.dart';

class PhoneInput extends StatelessWidget {
  // dynamic country code dropdown value 
  final List<CountryCode> countryCodes;
  final ValueChanged<String> onTextFieldChange;
  final bool isTextFiledEnabled;

  const PhoneInput({
    super.key,
    required this.countryCodes,
    required this.onTextFieldChange,
    required this.isTextFiledEnabled
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final PhoneController phoneController = Get.put(PhoneController());

    return Row(
      children: [
        Container(
          width: 100,
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              bottomLeft: Radius.circular(8),
            ),
            
          ),
          child: Obx(
            () => DropdownButton<String>(
              value: phoneController.selectedCountryCode.value,
              items: [
                ...countryCodes.map((CountryCode countryCode) {
                  return DropdownMenuItem<String>(
                    value: countryCode.dialCode,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "${countryCode.countryFlag}",
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '${countryCode.dialCode}',
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  );
                }),
              ],
              onChanged: (String? newValue) {
                if (newValue != null) {
                  phoneController.updateCountryCode(newValue);
                }
              },
              icon: const Icon(Icons.arrow_drop_down, size: 20),
              underline: Container(),
              isExpanded: true,
            ),
          ),
        ),
        Expanded(
          
          child: TextField(
            decoration: InputDecoration(
              hintText: l10n.enterMobileNumber,
              filled: true,
              fillColor: Colors.white,
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                borderSide: BorderSide.none,
              ),
            ),
            keyboardType: TextInputType.phone,
            onChanged: onTextFieldChange,
            enabled: isTextFiledEnabled,
          ),
          
          
        ),
      ],
    );
  }
}
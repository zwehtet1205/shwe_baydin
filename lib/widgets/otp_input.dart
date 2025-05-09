import 'package:flutter/material.dart';

class OtpInput extends StatelessWidget {
  const OtpInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(4, (index) {
        return Container(
          width: 50,
          height: 50,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            maxLength: 1,
            decoration: const InputDecoration(
              counterText: '',
              border: InputBorder.none,
            ),
            onChanged: (value) {
              if (value.length == 1 && index < 3) {
                FocusScope.of(context).nextFocus();
              }
            },
          ),
        );
      }),
    );
  }
}
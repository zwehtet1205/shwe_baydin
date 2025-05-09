import 'package:flutter/material.dart';

class Illustration extends StatelessWidget {

  // dynamic image 
  final String imagePath ;

  const Illustration({
    super.key,
    required this.imagePath
  });

  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
      child: Center(
        child: Image.asset(
          imagePath,
          width: MediaQuery.of(context).size.width * 0.6,
          height: MediaQuery.of(context).size.height * 0.25,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class QuarterCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final radius = size.width * 1.5; // Increase the radius to make the circle larger

    // Start from the top-left corner
    path.moveTo(0, 0);
    // Draw a quarter-circle arc from top-left to bottom-right of the clip area
    path.quadraticBezierTo(0, size.height, size.width, size.height);
    // Line to the bottom-left of the clip area
    path.lineTo(size.width, 0);
    // Line back to the top-left
    path.lineTo(0, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
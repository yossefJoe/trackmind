import 'package:flutter/material.dart';

class DiagonalHalfPainter extends CustomPainter {
  final Color fillColor;

  DiagonalHalfPainter({required this.fillColor});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = fillColor;

    final path = Path()
      ..moveTo(0, size.height)       // Bottom-left
      ..lineTo(0, 0)                 // Top-left
      ..lineTo(size.width, size.height) // Bottom-right
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}


import 'package:flutter/material.dart';
import 'package:trackmind/features/home/presentation/views/widgets/custom_painter.dart';

Widget habitBox({
  required Color backgroundColor,
  required Color triangleColor,
  double size = 60,
}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(16),
    child: Container(
      width: size,
      height: size,
      color: backgroundColor,
      child: CustomPaint(
        painter: DiagonalHalfPainter(fillColor: triangleColor),
      ),
    ),
  );
}

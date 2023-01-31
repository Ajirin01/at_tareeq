import 'package:flutter/material.dart';

import '../config/color.dart';

class MyPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    final p1 = Offset(0, 0);
    final p2 = Offset(100, 0);
    final paint = Paint()
      ..color = CustomColor.appBlue
      ..strokeWidth = 2;
    canvas.drawLine(p1, p2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class MyPainter2 extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    final p1 = Offset(-100, 0);
    final p2 = Offset(0, 0);
    final paint = Paint()
      ..color = CustomColor.appBlue
      ..strokeWidth = 2;
    canvas.drawLine(p1, p2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
import 'package:flutter/material.dart';

class ModalCustomPainter extends CustomPainter {
  ModalCustomPainter(this.size);

  final Size size;

  @override
  void paint(Canvas canvas, Size size) {
    final paint0 = Paint()..color = const Color(0xFFFFFFFF);

    final path0 = Path();
    path0.moveTo(
      0,
      size.height * 0.1442857,
    );
    path0.quadraticBezierTo(
      size.width * -0.0020583,
      size.height * -0.0007571,
      size.width * 0.0826667,
      0,
    );
    path0.quadraticBezierTo(
      size.width * 0.2919750,
      size.height * 0.0433571,
      size.width * 0.5007333,
      size.height * 0.0441286,
    );
    path0.quadraticBezierTo(
      size.width * 0.7089417,
      size.height * 0.0436714,
      size.width * 0.9172500,
      0,
    );
    path0.quadraticBezierTo(
      size.width * 0.9999000,
      size.height * 0.0022286,
      size.width,
      size.height * 0.1440857,
    );
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

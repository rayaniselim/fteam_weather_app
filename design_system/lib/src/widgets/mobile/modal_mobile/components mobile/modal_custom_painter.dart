import 'package:flutter/material.dart';

class ModalCustomPainter extends CustomPainter {
  final Size size;
  ModalCustomPainter(this.size);

  @override
  void paint(Canvas canvas, Size size) {
    final paint0 = Paint()..color = const Color(0xFFFFFFFF);

    final path0 = Path()
      ..moveTo(
        0,
        size.height, // ALTURA ESQUERDA em baixo
      )
      ..quadraticBezierTo(
        size.width * -0.001, // borda esquerda
        size.height * -0.001, // ponto de curvatura ESQUERDA EM CIMA
        size.width * 0.065, // // levanta e ajusta a borda ESQUERDA
        2, // ALTURA DO TOPO DA CURVA
      )
      ..quadraticBezierTo(
        // ESQUERDA
        size.width * 0.1, // APROFUNDAMENTO ESQUERDO DA CURVA CONCAVA
        size.height * 0.06, // DESDE A0 LADO DA CURVA
        size.width * 0.50, // CENTRO DA PROFUNDIDADE
        size.height * 0.2, // CENTRO PRA BAIXO
      )
      ..quadraticBezierTo(
        // DIREITA
        size.width * 0.9, // APROFUNDAMENTO DIREITO DA CURVA CONCAVA
        size.height * 0.06, // curvatura direita
        size.width * 0.95, // levanta e ajusta a borda direita
        2, // ALTURA DO TOPO DA CURVA
      )
      ..quadraticBezierTo(
        size.width * 0.999, // BORDA, CURVA DIREITA
        size.height * 0.0300, // Borda Direita na curvatura
        size.width,
        size.height,
      )
      ..close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

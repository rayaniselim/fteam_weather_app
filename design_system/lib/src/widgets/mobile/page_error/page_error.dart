import 'package:flutter/material.dart';

class PageError extends StatelessWidget {
  final double fontSize;
  const PageError({super.key, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/images/nuvens.jpeg',
          fit: BoxFit.cover,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Não foi possível carregar os dados.',
              style: TextStyle(
                fontSize: fontSize,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';

import '../../../../design_system.dart';

class LoadingPage extends StatelessWidget {
  final double fontSize;
  const LoadingPage({super.key, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            Images.nuvens,
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
                'Carregando os dados..',
                style: TextStyle(
                  fontSize: fontSize,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomeForecastModal extends StatelessWidget {
  const HomeForecastModal({super.key});

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          width: largura * 1.1,
          height: altura * 0.07,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
          ),
          child: Text(
            'Modal',
            textAlign: TextAlign.center,
            style: AppFontTheme(30).textBlack,
          ),
        ),
      ],
    );
  }
}

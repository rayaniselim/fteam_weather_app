import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomeDescriptionComponent extends StatelessWidget {
  final Border border;
  final Color color;
  final Color colorDivider;
  final double thickness;

  const HomeDescriptionComponent(
      {super.key,
      required this.border,
      required this.color,
      required this.colorDivider,
      required this.thickness});

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Container(
            width: largura * 0.93,
            height: altura * 0.098,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
              border: border,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                  flex: 1,
                  child: Center(
                    child: FirstColumn(),
                  ),
                ),
                SizedBox(
                  height: altura * 0.025,
                  child: VerticalDivider(
                    color: colorDivider,
                    thickness: thickness,
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: Center(
                    child: SecondColumn(),
                  ),
                ),
                SizedBox(
                  height: altura * 0.025,
                  child: VerticalDivider(
                    color: colorDivider,
                    thickness: thickness,
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: Center(
                    child: ThirdColumn(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

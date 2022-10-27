import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomeDescriptionComponent extends StatelessWidget {
  final Border border;
  final Color color;
  final Color colorDivider;
  final double thickness;
  final double size1;
  final double size2;

  const HomeDescriptionComponent(
      {super.key,
      required this.border,
      required this.color,
      required this.colorDivider,
      required this.thickness,
      required this.size1,
      required this.size2});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Container(
            width: width * 0.93,
            height: height * 0.098,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
              border: border,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Center(
                    child: FirstColumn(
                      size1: size1,
                      size2: size2,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.025,
                  child: VerticalDivider(
                    color: colorDivider,
                    thickness: thickness,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: SecondColumn(
                      size1: size1,
                      size2: size2,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.025,
                  child: VerticalDivider(
                    color: colorDivider,
                    thickness: thickness,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: ThirdColumn(
                      size1: size1,
                      size2: size2,
                    ),
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

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomeDescriptionComponent extends StatelessWidget {
  final Border border;
  final Color color;
  final Color colorDivider;
  final double thickness;
  final double sizeNumber;
  final double sizeDescription;

  const HomeDescriptionComponent({
    super.key,
    required this.colorDivider,
    required this.thickness,
    required this.border,
    required this.color,
    required this.sizeNumber,
    required this.sizeDescription,
  });

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
                    child: ColumnDescriptionMobile(
                      sizeNumber: sizeNumber,
                      sizeDescription: sizeDescription,
                      textDescription: 'Humidity',
                      textNumber: '40%',
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
                    child: ColumnDescriptionMobile(
                      sizeNumber: sizeNumber,
                      sizeDescription: sizeDescription,
                      textDescription: 'Visibility',
                      textNumber: '11km',
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
                    child: ColumnDescriptionMobile(
                      sizeNumber: sizeNumber,
                      sizeDescription: sizeDescription,
                      textDescription: 'Wind',
                      textNumber: '10km/h',
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

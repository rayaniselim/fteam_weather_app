import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomeDescriptionComponentMobile extends StatelessWidget {
  final Border border;
  final Color color;
  final Color colorDivider;
  final double thickness;
  final double sizeNumber;
  final double sizeDescription;
  final String weather;

  const HomeDescriptionComponentMobile({
    super.key,
    required this.colorDivider,
    required this.thickness,
    required this.border,
    required this.color,
    required this.sizeNumber,
    required this.sizeDescription,
    required this.weather,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(14),
      child: Container(
        width: size.width * 0.93,
        height: size.height * 0.098,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          border: border,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              child: Center(
                child: Icon(Icons.sunny),
              ),
            ),
            SizedBox(
              height: size.height * 0.025,
              child: VerticalDivider(
                color: colorDivider,
                thickness: thickness,
              ),
            ),
            Expanded(
              child: Center(
                child: ColumnDescriptionMobile(
                  sizeNumber: sizeNumber,
                  sizeDescription: sizeDescription,
                  textDescription: 'Wind',
                  textNumber: weather,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class CardTopWidgetWeb extends StatelessWidget {
  final Widget child;

  const CardTopWidgetWeb({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.31,
      height: height * 0.31,
      decoration: BoxDecoration(
        color: LightColors.colorsBlack26,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: LightColors.primaryColor),
      ),
      child: child,
    );
  }
}

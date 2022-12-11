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
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.31,
      height: size.height * 0.31,
      decoration: BoxDecoration(
        color: LightColors.colorsBlack26,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: LightColors.primaryColor),
      ),
      child: child,
    );
  }
}

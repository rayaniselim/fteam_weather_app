import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomeForecastModalMobile extends StatelessWidget {
  final void Function() onTap;
  const HomeForecastModalMobile({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return CustomPaint(
      painter: ModalCustomPainter(
        Size(size.width, size.height),
      ),
      child: SizedBox(
        width: size.width,
        height: 60,
        child: IconButton(
          onPressed: onTap,
          icon: const Icon(
            Icons.horizontal_rule_rounded,
          ),
          color: LightColors.colorsTextGrey,
        ),
      ),
    );
  }
}

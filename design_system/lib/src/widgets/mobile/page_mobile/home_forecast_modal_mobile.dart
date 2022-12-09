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
      painter: ModalCustomPainter(Size(size.width, size.width)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: size.width,
            height: 46,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.horizontal_rule_rounded,
                color: LightColors.colorsTextGrey,
              ),
              onPressed: onTap,
            ),
          ),
          Container(
            height: 16,
            color: LightColors.primaryColor,
          ),
        ],
      ),
    );
  }
}

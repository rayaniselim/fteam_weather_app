import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomeForecastModal extends StatelessWidget {
  const HomeForecastModal({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        CustomPaint(
          painter: ModalCustomPainter(Size(size.width, 320)),
          child: Column(
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
                  onPressed: () {
                    cardModalMobile(context, size: size);
                  },
                ),
              ),
              Container(
                height: 16,
                color: LightColors.primaryColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../page_mobile/component_hours_mobile.dart';

Container cardModalMobile(
  BuildContext context, {
  required Size size,
  required List list,
}) {
  final theme = Theme.of(context);
  return Container(
    color: Colors.transparent,
    constraints: const BoxConstraints(
      maxHeight: 260,
    ),
    child: CustomPaint(
      painter: ModalCustomPainter(
        Size(size.width, 330),
      ),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 30,
            ),
            decoration: BoxDecoration(
              color: LightColors.primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 45,
                child: IconButton(
                  icon: const Icon(
                    Icons.horizontal_rule_rounded,
                    color: LightColors.colorsTextGrey,
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                color: theme.backgroundColor,
                child: Column(
                  children: [
                    Text(
                      'Weather Today',
                      style: theme.textTheme.headline5?.copyWith(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ComponentsHoursMobile(
                      itemCount: list.length,
                      itemBuilder: (_, i) {
                        final element = list.elementAt(i);

                        return HoursWidgetMobile(
                          textDay: element.day,
                          image: Images.chuva,
                          fontSizeDay: 14,
                          textTemperature: element.temperature,
                          textWind: element.wind,
                          fontSizeTemperature: 36,
                          fontSizeBolinha: 26,
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../page_mobile/component_hours_mobile.dart';

Container cardModalMobile(
  BuildContext context, {
  required Size sizeModal,
  required List list,
}) {
  final theme = Theme.of(context);
  final size = MediaQuery.of(context).size;
  return Container(
    // PARTE DE DENTRO DO MODAL
    color: Colors.grey,
    constraints: BoxConstraints(
      maxHeight: size.height * 0.28,
    ),
    child: CustomPaint(
      painter: ModalCustomPainter(
        Size(
          sizeModal.width,
          340,
        ),
      ),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: size.height * 0.02,
            ),
            decoration: BoxDecoration(
              color: LightColors.primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: size.height * 0.035,
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
                    SizedBox(
                      height: size.height * 0.01,
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

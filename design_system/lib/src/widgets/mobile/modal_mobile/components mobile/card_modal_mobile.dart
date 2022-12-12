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
    constraints: BoxConstraints(
      maxHeight: size.height * 0.32,
      minHeight: size.height * 0.28,
    ),
    decoration: const BoxDecoration(
      color: Colors.transparent,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    child: Stack(
      children: [
        Column(
          children: [
            HomeForecastModalMobile(
              onTap: () {},
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
            Container(
              color: Colors.white,
              height: size.height * 0.032,
            )
          ],
        ),
      ],
    ),
  );
}

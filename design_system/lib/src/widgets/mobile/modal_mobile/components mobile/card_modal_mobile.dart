import 'package:core_module/core_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../page_mobile/component_hours_mobile.dart';

cardModalMobile(
  BuildContext context, {
  required Size size,
  required List<ForecastModel> forecastsList,
}) {
  // TODO Show modal fica no app
  // O Widget que é mostrado no modal, esse fica no design system
  showModalBottomSheet<void>(
    context: context,
    backgroundColor: Colors.transparent,
    elevation: 10,
    barrierColor: Colors.black12,
    constraints: const BoxConstraints(
      maxHeight: 260,
    ),
    builder: (BuildContext context) {
      // TODO Voce não deve vincular o widget a um modal
      return CustomPaint(
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
                  color: Theme.of(context).backgroundColor,
                  child: Column(
                    children: [
                      Text(
                        'Weather Today',
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            ?.copyWith(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ComponentsHoursMobile(
                        itemCount: forecastsList.length,
                        itemBuilder: (_, i) {
                          final element = forecastsList.elementAt(i);

                          return HoursWidgetMobile(
                            textDay: element.day,
                            // TODO static const
                            image: 'assets/images/chuva.png',
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
      );
    },
  );
}

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

cardModalMobile(BuildContext context, {required Size size}) {
  showModalBottomSheet<void>(
    context: context,
    backgroundColor: Colors.transparent,
    elevation: 0,
    barrierColor: Colors.black12,
    constraints: const BoxConstraints(
      maxHeight: 218,
    ),
    builder: (BuildContext context) {
      return CustomPaint(
        painter: ModalCustomPainter(
          Size(size.width, 320),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 46,
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        HoursWidgetMobile(
                          image: 'assets/images/chuva.png',
                          textHour: '05:00 AM',
                          fontSizeHour: 12,
                          textTemperature: '3',
                          fontSizeTemperature: 36,
                          fontSizeBolinha: 26,
                        ),
                        HoursWidgetMobile(
                          image: 'assets/images/nublado.png',
                          textHour: '06:00 AM',
                          fontSizeHour: 12,
                          textTemperature: '16',
                          fontSizeTemperature: 36,
                          fontSizeBolinha: 26,
                        ),
                        HoursWidgetMobile(
                          image: 'assets/images/sol.png',
                          textHour: '07:00 AM',
                          fontSizeHour: 12,
                          textTemperature: '23',
                          fontSizeTemperature: 36,
                          fontSizeBolinha: 26,
                        ),
                        HoursWidgetMobile(
                          image: 'assets/images/sol.png',
                          textHour: '08:00 AM',
                          fontSizeHour: 12,
                          textTemperature: '23',
                          fontSizeTemperature: 36,
                          fontSizeBolinha: 26,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}

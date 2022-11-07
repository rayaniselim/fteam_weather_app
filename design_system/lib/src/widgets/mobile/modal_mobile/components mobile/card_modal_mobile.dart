import 'package:core_module/core_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import 'component_hours.dart';

cardModalMobile(BuildContext context,
    {required Size size, required List<ForecastModel> forecastsList}) {
  showModalBottomSheet<void>(
    context: context,
    backgroundColor: Colors.transparent,
    elevation: 10,
    barrierColor: Colors.black12,
    constraints: const BoxConstraints(
      maxHeight: 260,
    ),
    builder: (BuildContext context) {
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
              color: Colors.white,
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
                      ComponentsHours(
                        forecastList: forecastsList,
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

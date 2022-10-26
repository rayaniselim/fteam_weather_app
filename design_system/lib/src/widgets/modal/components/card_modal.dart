import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

void cardModal(BuildContext context, {required Size size}) {
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
        painter: ModalCustomPainter(Size(size.width, 320)),
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
                        HourFive(),
                        HourSix(),
                        HourSeven(),
                        HourEight(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
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

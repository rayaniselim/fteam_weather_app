import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:web_weather/widgets/modal/widgets/hour_five_web.dart';

import '../widgets/hour_eight_web.dart';
import '../widgets/hour_seven_web.dart';
import '../widgets/hour_six_web.dart';

class CardModalWeb extends StatelessWidget {
  const CardModalWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          width: width * 0.32,
          height: height * 0.32,
          decoration: BoxDecoration(
            color: LightColors.colorsBlack38,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: LightColors.primaryColor),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: FittedBox(
                  child: Text(
                    'Weather Today',
                    style: Theme.of(context)
                        .textTheme
                        .headline2
                        ?.copyWith(fontSize: 24),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const HourFiveWeb(),
                    SizedBox(width: width * 0.018),
                    const HourSixWeb(),
                    SizedBox(width: width * 0.018),
                    const HourSevenWeb(),
                    SizedBox(width: width * 0.018),
                    const HourEightWeb(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

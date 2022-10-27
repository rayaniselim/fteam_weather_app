import 'package:flutter/material.dart';
import 'package:web_weather/widgets/hour_five_web.dart';

import '../../hour_eight_web.dart';
import '../../hour_seven_web.dart';
import '../../hour_six_web.dart';

class CardModalWeb extends StatelessWidget {
  const CardModalWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 280,
          color: Colors.black38,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  'Weather Today',
                  style: Theme.of(context)
                      .textTheme
                      .headline2
                      ?.copyWith(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    HourFiveWeb(),
                    SizedBox(
                      width: 20,
                    ),
                    HourSixWeb(),
                    SizedBox(
                      width: 20,
                    ),
                    HourSevenWeb(),
                    SizedBox(
                      width: 20,
                    ),
                    HourEightWeb(),
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
    );
  }
}

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

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
                    HourFive(),
                    SizedBox(
                      width: 20,
                    ),
                    HourSix(),
                    SizedBox(
                      width: 20,
                    ),
                    HourSeven(),
                    SizedBox(
                      width: 20,
                    ),
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
    );
  }
}

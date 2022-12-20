import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomeHeaderComponentMobile extends StatelessWidget {
  final String temperature;
  final String city;
  final String description;
  final void Function() onTap;

  const HomeHeaderComponentMobile({
    super.key,
    required this.city,
    required this.temperature,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final statusBar = MediaQuery.of(context).viewPadding.top;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: statusBar,
            right: 22,
            left: 22,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CityWidget(
                    sizeFont: 16,
                    city: city,
                  ),
                ],
              ),
              IconButtonWidget(
                onTap: onTap,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 22,
            left: 22,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TemperatureWidget(
                size: 90,
                temperature: temperature,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextItsWidget(
              description: description,
              sizeDescription: 16,
            ),
          ],
        )
      ],
    );
  }
}

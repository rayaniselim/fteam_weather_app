import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomeHeaderComponent extends StatelessWidget {
  final String temperature;
  final String city;
  final String description;

  const HomeHeaderComponent({
    super.key,
    required this.city,
    required this.temperature,
    required this.description,
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
                    size: 16,
                    city: city,
                  ),
                ],
              ),
              const IconButtonWidget(),
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
                size: 120,
                temperature: temperature,
              ),
              TextItsWidget(
                size: 16,
                description: description,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

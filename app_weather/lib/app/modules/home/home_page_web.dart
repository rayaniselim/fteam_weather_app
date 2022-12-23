import 'package:core_module/core_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomePageWeb extends StatelessWidget {
  final WeatherModel weather;

  const HomePageWeb({
    super.key,
    required this.weather,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          Images.nuvens,
          fit: BoxFit.cover,
        ),
        Container(color: LightColors.colorBlackOpacity),
        Padding(
          padding: const EdgeInsets.all(60),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FittedBox(
                    child: CardTemperatureWeb(
                      modelCity: weather.city,
                      modelDescription: weather.description,
                      modelTemperature: weather.temperature,
                    ),
                  ),
                  const FittedBox(
                    child: CardModalWeb(),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ComponentsHoursWeb(
                    list: weather.forecast,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

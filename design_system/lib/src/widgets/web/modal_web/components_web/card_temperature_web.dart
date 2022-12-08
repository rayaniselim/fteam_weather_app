import 'package:core_module/core_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class CardTemperatureWeb extends StatefulWidget {
  final WeatherModel? weather;

  const CardTemperatureWeb({
    super.key,
    required this.weather,
  });

  @override
  State<CardTemperatureWeb> createState() => _CardTemperatureWebState();
}

class _CardTemperatureWebState extends State<CardTemperatureWeb> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return CardTopWidgetWeb(
      child: FittedBox(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: width * 0.28,
                alignment: Alignment.topLeft,
                child: CityWidget(
                  size: 20,
                  city: widget.weather!.city!,
                ),
              ),
              TemperatureWidget(
                size: 130,
                temperature: widget.weather!.temperature,
              ),
              Container(
                alignment: Alignment.bottomRight,
                width: width * 0.28,
                child: TextItsWidget(
                  size: 20,
                  description: widget.weather!.description,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

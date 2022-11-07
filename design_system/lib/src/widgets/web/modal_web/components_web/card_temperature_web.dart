import 'package:core_module/core_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class CardTemperatureWeb extends StatefulWidget {
  final List<WeatherModel> weathers;

  const CardTemperatureWeb({
    super.key,
    required this.weathers,
  });

  @override
  State<CardTemperatureWeb> createState() => _TemperatureWidgeWebtState();
}

class _TemperatureWidgeWebtState extends State<CardTemperatureWeb> {
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
                  city: widget.weathers[0].city,
                ),
              ),
              TemperatureWidget(
                size: 130,
                temperature: widget.weathers[0].temperature,
              ),
              Container(
                alignment: Alignment.bottomRight,
                width: width * 0.28,
                child: TextItsWidget(
                  size: 20,
                  description: widget.weathers[0].description,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class CardTemperatureWeb extends StatefulWidget {
  final String? modelCity;
  final String modelTemperature;
  final String modelDescription;

  const CardTemperatureWeb({
    super.key,
    required this.modelCity,
    required this.modelTemperature,
    required this.modelDescription,
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
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Container(
                width: width * 0.28,
                alignment: Alignment.topLeft,
                child: CityWidget(
                  sizeFont: 20,
                  city: widget.modelCity!,
                ),
              ),
              TemperatureWidget(
                size: 130,
                temperature: widget.modelTemperature,
              ),
              Container(
                alignment: Alignment.bottomRight,
                width: width * 0.28,
                child: TextItsWidget(
                  sizeDescription: 20,
                  description: widget.modelDescription,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class CardTemperatureWeb extends StatefulWidget {
  const CardTemperatureWeb({super.key});

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
                child: const CityWidget(
                  size: 20,
                ),
              ),
              const TemperatureWidget(
                size: 130,
              ),
              Container(
                alignment: Alignment.bottomRight,
                width: width * 0.28,
                child: const TextItsWidget(
                  size: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

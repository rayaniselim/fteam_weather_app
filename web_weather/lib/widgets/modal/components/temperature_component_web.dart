import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class TemperatureComponentWeb extends StatefulWidget {
  const TemperatureComponentWeb({super.key});

  @override
  State<TemperatureComponentWeb> createState() => _TemperatureWidgeWebtState();
}

class _TemperatureWidgeWebtState extends State<TemperatureComponentWeb> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.center,
      width: width * 0.32,
      height: height * 0.32,
      decoration: BoxDecoration(
        color: LightColors.colorsBlack38,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: LightColors.primaryColor,
        ),
      ),
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

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
    return Container(
      alignment: Alignment.center,
      height: 280,
      width: 280,
      color: Colors.black38,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CityWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                TemperatureWidget(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                TextItsWidget(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

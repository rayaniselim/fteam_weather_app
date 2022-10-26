import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomeHeaterComponent extends StatelessWidget {
  const HomeHeaterComponent({
    super.key,
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
                children: const [
                  CityWidget(),
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
            children: const [
              TemperatureWidget(),
              TextItsWidget(),
            ],
          ),
        ),
      ],
    );
  }
}

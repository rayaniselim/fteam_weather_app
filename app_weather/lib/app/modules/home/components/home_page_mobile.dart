import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import 'home_description_component.dart';
import 'home_forecast_modal.dart';
import 'home_heater_component.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({super.key});

  @override
  State<HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/dia.png',
            fit: BoxFit.cover,
          ),
          Container(color: LightColors.colorBlackOpacity),
          Column(
            children: [
              const HomeHeaterComponent(),
              const Spacer(),
              HomeDescriptionComponent(
                border: Border.all(color: LightColors.primaryColor),
                color: LightColors.colorWhite10,
                colorDivider: LightColors.colorWhite70,
                thickness: 0.3,
                size1: 16,
                size2: 12,
              ),
              const SizedBox(
                height: 26,
              ),
              const HomeForecastModal(),
            ],
          ),
        ],
      ),
    );
  }
}

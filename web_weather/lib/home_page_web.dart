import 'package:app_weather/app/modules/home/components/home_description_component.dart';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import 'components/card_modal_web.dart';
import 'components/temperature_component_web.dart';

class HomePageWeb extends StatefulWidget {
  const HomePageWeb({super.key});

  @override
  State<HomePageWeb> createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/girassol.png',
            fit: BoxFit.cover,
          ),
          Container(color: LightColors.colorBlackOpacity),
          Padding(
            padding: const EdgeInsets.all(60.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TemperatureComponentWeb(),
                    CardModalWeb(),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(36),
                  child: HomeDescriptionComponent(
                    color: Colors.black38,
                    border: Border.all(color: Colors.black),
                    colorDivider: Colors.black,
                    thickness: 0.5,
                  ),
                ),
                const SizedBox(
                  height: 26,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

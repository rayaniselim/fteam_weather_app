import 'package:app_weather/app/modules/home/components/home_description_component.dart';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

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
            padding: const EdgeInsets.all(60),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    FittedBox(
                      child: CardTemperatureWeb(),
                    ),
                    FittedBox(
                      child: CardModalWeb(),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    FittedBox(
                      child: CardForecastDayWeb(
                        image: 'assets/images/sol.png',
                        textDay: 'Monday',
                        textTemperature: '27',
                      ),
                    ),
                    FittedBox(
                      child: CardForecastDayWeb(
                        textDay: 'Tuesday',
                        textTemperature: '25',
                        image: 'assets/images/nublado_branco.png',
                      ),
                    ),
                    FittedBox(
                      child: CardForecastDayWeb(
                        image: 'assets/images/chuva_branca.png',
                        textDay: 'Wednesday',
                        textTemperature: '16',
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 36,
                    right: 36,
                    left: 36,
                  ),
                  child: FittedBox(
                    child: HomeDescriptionComponent(
                      color: LightColors.colorsBlack38,
                      border: Border.all(
                        color: LightColors.primaryColor,
                      ),
                      colorDivider: LightColors.primaryColor,
                      thickness: 0.5,
                      sizeDescription: 18,
                      sizeNumber: 26,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

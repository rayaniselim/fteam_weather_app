import 'package:app_weather/app/modules/home/components/home_description_component.dart';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import 'widgets/modal/components/card_modal_web.dart';
import 'widgets/modal/components/forecast_day_web.dart';
import 'widgets/modal/components/temperature_component_web.dart';

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
                    FittedBox(
                      child: TemperatureComponentWeb(),
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
                      child: ForecastDayWeb(
                        image: 'assets/images/sol.png',
                        textDay: 'Monday',
                        textTemperature: '27',
                      ),
                    ),
                    FittedBox(
                      child: ForecastDayWeb(
                        textDay: 'Tuesday',
                        textTemperature: '25',
                        image: 'assets/images/nublado_branco.png',
                      ),
                    ),
                    FittedBox(
                      child: ForecastDayWeb(
                        image: 'assets/images/chuva_branca.png',
                        textDay: 'Wednesday',
                        textTemperature: '16',
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(36),
                  child: FittedBox(
                    child: HomeDescriptionComponent(
                      color: LightColors.colorsBlack38,
                      border: Border.all(
                        color: LightColors.primaryColor,
                      ),
                      colorDivider: LightColors.primaryColor,
                      thickness: 0.5,
                      size1: 26,
                      size2: 18,
                    ),
                  ),
                ),
                // const SizedBox(
                //   height: 26,
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:core_module/core_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import 'home_description_component.dart';
import 'home_forecast_modal.dart';
import 'home_header_component.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({
    super.key,
  });

  @override
  State<HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  late final WeatherBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = WeatherBloc();
    bloc.add(LoadWeathersEvent());
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
        bloc: bloc,
        builder: (context, state) {
          if (state.weathers.isEmpty) {
            return Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'assets/images/dia.png',
                  fit: BoxFit.cover,
                ),
                const Center(child: CircularProgressIndicator()),
              ],
            );
          } else {
            return Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'assets/images/dia.png',
                  fit: BoxFit.cover,
                ),
                Container(color: LightColors.colorBlackOpacity),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 66,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HomeHeaderComponent(
                        city: state.weathers[0].city,
                        temperature: state.weathers[0].temperature,
                        description: state.weathers[0].description,
                      ),
                      const Spacer(),
                      HomeDescriptionComponent(
                        border: Border.all(color: LightColors.primaryColor),
                        color: LightColors.colorWhite10,
                        colorDivider: LightColors.colorWhite70,
                        thickness: 0.3,
                        sizeDescription: 12,
                        sizeNumber: 16,
                        weathers: state.weathers,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: HomeForecastModal(
                    forecastsList: state.weathers[0].forecast,
                  ),
                ),
              ],
            );
          }
        });
  }
}

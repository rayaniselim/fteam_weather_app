import 'package:core_module/core_module.dart';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({
    super.key,
  });

  @override
  State<HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  final bloc = Modular.get<WeatherBloc>();
  final textController = TextEditingController();
  final weather = WeatherModel;

  @override
  void initState() {
    super.initState();

    bloc.add(const SearchWeatherEvent(city: 'Sao paulo'));
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
        final weather = state.weather;

        if (weather == null) {
          return const PageError(
            fontSize: 16,
          );
        } else {
          return Stack(
            fit: StackFit.expand,
            children: [
              Images.nuvens,
              Container(color: LightColors.colorBlackOpacity),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 66,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeHeaderComponentMobile(
                      city: weather.city!,
                      temperature: weather.temperature,
                      description: weather.description,
                    ),
                    const Spacer(),
                    HomeDescriptionComponentMobile(
                      border: Border.all(color: LightColors.primaryColor),
                      color: LightColors.colorsBlack26,
                      colorDivider: LightColors.colorWhite70,
                      thickness: 0.3,
                      sizeDescription: 12,
                      sizeNumber: 16,
                      weather: weather.wind,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: HomeForecastModalMobile(
                  list: weather.forecast,
                ),
              ),
            ],
          );
        }
      },
    );
  }
}

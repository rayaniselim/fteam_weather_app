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

    bloc.add(const SearchWeatherEvent(city: 'Sao Paulo'));
  }

  @override
  void dispose() {
    bloc.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return BlocBuilder<WeatherBloc, WeatherState>(
      bloc: bloc,
      builder: (context, state) {
        final weather = state.weather;
        if (weather == null) {
          return const PageError(
            fontSize: 16,
          );
        } else {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Images.nuvens,
                    Container(color: LightColors.colorBlackOpacity),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 66,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          HomeHeaderComponentMobile(
                            city: weather.city!,
                            temperature: weather.temperature,
                            description: weather.description,
                          ),
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
                    Positioned(
                      bottom: 0,
                      child: Column(
                        children: [
                          HomeForecastModalMobile(
                            onTap: () {
                              showModalBottomSheet<void>(
                                context: context,
                                barrierColor: Colors.black12,
                                backgroundColor: Colors.transparent,
                                builder: (BuildContext context) {
                                  return cardModalMobile(
                                    context,
                                    sizeModal: size,
                                    list: weather.forecast,
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        }
      },
    );
  }
}

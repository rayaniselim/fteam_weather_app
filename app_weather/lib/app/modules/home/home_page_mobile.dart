import 'package:core_module/core_module.dart';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomePageMobile extends StatelessWidget {
  final WeatherModel weather;
  final void Function() onTapSearch;

  const HomePageMobile({
    super.key,
    required this.weather,
    required this.onTapSearch,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                Images.nuvens,
                fit: BoxFit.cover,
              ),
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
                      onTapSearch: onTapSearch,
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
}

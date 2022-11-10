import 'package:core_module/core_module.dart';
import 'package:core_module/feature/data/datasources/weather_datasource.dart';
import 'package:core_module/feature/data/repositories/weather_repository.dart';
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
  late final WeatherBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = WeatherBloc(
      weatherRepo: WeatherRepository(
        datasource: WeatherDatasource(
          client: DioClientAdapter(),
        ),
      ),
    );
    bloc.add(
      SearchWeatherEvent(
        city: 'Brasilia',
      ),
    );
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
          if (state.weather == null) {
            return const PageError(
              fontSize: 16,
            );
          } else {
            return Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'assets/images/nuvens.jpeg',
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
                      HomeHeaderComponentMobile(
                        city: state.weather!.city!,
                        temperature: state.weather!.temperature,
                        description: state.weather!.description,
                      ),
                      const Spacer(),
                      HomeDescriptionComponentMobile(
                        border: Border.all(color: LightColors.primaryColor),
                        color: LightColors.colorsBlack26,
                        colorDivider: LightColors.colorWhite70,
                        thickness: 0.3,
                        sizeDescription: 12,
                        sizeNumber: 16,
                        weathers: state.weather!,
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: HomeForecastModalMobile(
                    forecastsList: state.weather!.forecast,
                  ),
                ),
              ],
            );
          }
        });
  }
}

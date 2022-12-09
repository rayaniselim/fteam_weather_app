import 'package:core_module/core_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomePageWeb extends StatefulWidget {


  const HomePageWeb({
    super.key,

  });

  @override
  State<HomePageWeb> createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> {
  late final WeatherBloc bloc;

  @override
  void initState() {
    super.initState();

    // Injetar nos binds
    bloc = WeatherBloc(
      weatherRepo: WeatherRepository(
        datasource: WeatherDatasource(
          client: DioHttpClient(Modular.get<Dio>()),
        ),
      ),
    );
    bloc.add(const SearchWeatherEvent(city: 'Brasilia'));
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  late WeatherModel weather;
  @override
  Widget build(BuildContext context) {

    return BlocBuilder<WeatherBloc, WeatherState>(
      bloc: bloc,
      builder: (context, state) {
        if (state.weather == null) {
          return const PageError(
            fontSize: 30,
          );
        } else {
          return Stack(
            fit: StackFit.expand,
            children: [
              Images.nuvens,
              Container(color: LightColors.colorBlackOpacity),
              Padding(
                padding: const EdgeInsets.all(60),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FittedBox(
                          child: CardTemperatureWeb(
                            modelCity: weather.city,
                            modelDescription: weather.description,
                            modelTemperature: weather.temperature,
                          ),
                        ),
                        const FittedBox(
                          child: CardModalWeb(),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ComponentsHoursWeb(
                          list: state.weather!.forecast,
                        ),
                      ],
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

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
    bloc = WeatherBloc();
    bloc.add(
      LoadWeathersEvent(city: 'curitiba'),
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
        if (state.weathers.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return Stack(
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
                      children: [
                        FittedBox(
                          child: CardTemperatureWeb(
                            weathers: state.weathers,
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
                          forecastList: state.weathers[0].forecast,
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

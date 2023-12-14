import 'package:core_module/core_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'home_page_mobile.dart';
import 'home_page_web.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bloc = Modular.get<WeatherBloc>();

  @override
  void initState() {
    super.initState();
    bloc.add(const SearchWeatherEvent(city: 'curitiba'));
  }

  @override
  void dispose() {
    super.dispose();
    bloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      bloc: bloc,
      builder: (context, state) {
        final weather = state.weather;
        if (weather == null) {
          return const LoadingPage(
            fontSize: 30,
          );
        } else {
          return LayoutBuilder(
            builder: (context, constraints) {
              final width = constraints.maxWidth;
              final barHeight = AppBar().preferredSize.height;

              return Scaffold(
                extendBody: true,
                appBar: width < 600
                    ? null
                    : PreferredSize(
                        preferredSize: Size(width, barHeight),
                        child: WebAppBar(
                          onSubmitted: (String valorDigitado) {
                            bloc.add(SearchWeatherEvent(city: valorDigitado));
                          },
                        ),
                      ),
                body: width < 600
                    // anuncia um tamanho preferido que pode ser usado pelo pai
                    // Cria um widget que tem um tamanho preferencial
                    // que o pai pode consultar.
                    ? HomePageMobile(
                        weather: weather,
                        onTapSearch: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => PageDropDownMobile(
                              onSubmitted: (String city) {
                                bloc.add(SearchWeatherEvent(city: city));
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ),
                      )
                    : HomePageWeb(weather: weather),
              );
            },
          );
        }
      },
    );
  }
}

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
  @override
  Widget build(BuildContext context) {
    final bloc = Modular.get<WeatherBloc>();
    final textController = TextEditingController();

    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final alturaBarra = AppBar().preferredSize.height;

        return Scaffold(
          extendBody: true,
          appBar: width < 600
              ? null
              : PreferredSize(
                  preferredSize: Size(width, alturaBarra),
                  child: WebAppBar(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => SearchWidgetDropDown(
                          onSubmitted: (String city) {
                            bloc.add(SearchWeatherEvent(city: city));
                          },
                          textController: textController,
                        ),
                      ),
                    ),
                    onSubmitted: (valorDigitado) {
                      bloc.add(SearchWeatherEvent(city: valorDigitado));
                    },
                  ),
                ),
          body: width < 600
              // anuncia um tamanho preferido que pode ser usado pelos pais.
              // Cria um widget que tem um tamanho preferencial
              // que o pai pode consultar.
              // cria seu próprio widget de tamanho preferido personalizado
              // ? PreferredSize(
              // preferredSize: Size(width, alturaBarra),
              // child:
              ? const HomePageMobile()
              // )
              : PreferredSize(
                  preferredSize: Size(width, alturaBarra),
                  child: const HomePageWeb(),
                ),
        );
      },
    );
  }
}

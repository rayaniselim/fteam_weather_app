import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';
import 'package:web_weather/web_weather.dart';

import 'components/home_page_mobile.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'Home'}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeStore store;

  _ajustarVisualizacao(
    double larguraTela,
  ) {
    int colunas = 2;
    if (larguraTela <= 600) {
      colunas = 2;
    } else if (larguraTela <= 960) {
      colunas = 4;
    } else {
      colunas = 6;
    }
    return colunas;
  }

  @override
  void initState() {
    super.initState();
    store = Modular.get<HomeStore>();
  }

  @override
  void dispose() {
    Modular.dispose<HomeStore>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final statusBottom = MediaQuery.of(context).viewPadding.bottom;

    return LayoutBuilder(
      builder: (context, constraints) {
        var largura = constraints.maxWidth;
        var alturaBarra = AppBar().preferredSize.height;

        return Scaffold(
          appBar: largura < 600
              ? PreferredSize(
                  preferredSize: Size(largura, alturaBarra),
                  child: const SafeArea(
                    child: SizedBox(width: 1),
                  ))
              : PreferredSize(
                  preferredSize: Size(largura, alturaBarra),
                  child: const WebAppBar(),
                ),
          body: largura < 600
              ? PreferredSize(
                  preferredSize: Size(largura, alturaBarra),
                  child: const HomePageMobile(),
                )
              : PreferredSize(
                  preferredSize: Size(largura, alturaBarra),
                  child: const HomePageWeb(),
                ),
        );
      },
    );
  }
}

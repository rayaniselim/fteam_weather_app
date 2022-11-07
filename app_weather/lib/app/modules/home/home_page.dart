import 'package:flutter/material.dart';
import 'package:web_weather/web_weather.dart';

import 'components_mobile/home_page_mobile.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'Home'}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // late final HomeStore store;

  @override
  void initState() {
    super.initState();
    // store = Modular.get<HomeStore>();
  }

  @override
  void dispose() {
    // Modular.dispose<HomeStore>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var width = constraints.maxWidth;
        var alturaBarra = AppBar().preferredSize.height;

        return Scaffold(
          extendBody: true,
          appBar: width < 600
              ? null
              : PreferredSize(
                  preferredSize: Size(width, alturaBarra),
                  child: const WebAppBar(),
                ),
          body: width < 600
              ? PreferredSize(
                  preferredSize: Size(width, alturaBarra),
                  child: const HomePageMobile(),
                )
              : PreferredSize(
                  preferredSize: Size(width, alturaBarra),
                  child: const HomePageWeb(),
                ),
        );
        // }
      },
    );
  }
}

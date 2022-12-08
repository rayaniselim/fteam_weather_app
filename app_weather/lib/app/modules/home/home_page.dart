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
                  child: const WebAppBar(),
                ),
          body: width < 600
              // TODO(rayani): Pra que serve o PreferredSize
              ? PreferredSize(
                  preferredSize: Size(width, alturaBarra),
                  child: const HomePageMobile(),
                )
              : PreferredSize(
                  preferredSize: Size(width, alturaBarra),
                  child: const HomePageWeb(),
                ),
        );
      },
    );
  }
}

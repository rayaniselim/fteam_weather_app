import 'package:core_module/core_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'Home'}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeStore store;

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
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;
    final statusBar = MediaQuery.of(context).viewPadding.top;
    final statusBottom = MediaQuery.of(context).viewPadding.bottom;

    return Scaffold(
      extendBody: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/dia.png',
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: statusBar,
                  right: 22,
                  left: 22,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// HEADER - CABECALHO

                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_sharp,
                          color: Colors.white,
                          size: 18,
                        ),
                        Text(
                          ' Tuscany',
                          style: AppFontTheme(24).textWhite,
                        ),
                      ],
                    ),

                    /// TODO: DRAWER
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.view_headline_rounded,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 22,
                  left: 22,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '23°', // TODO: deixar a bolinha pequena
                      style: AppFontTheme(130).textWhite,
                    ),
                    Text(
                      "it's Sunny",
                      style: AppFontTheme(20).textWhite,
                    ),
                  ],
                ),
              ),

              const Spacer(),

              /// DESCRICAO
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  width: largura * 0.93,
                  height: altura * 0.098,
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '40%',
                                style: AppFontTheme(16).textWhite,
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                'Humidity',
                                style: AppFontTheme(12).textWhite,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: altura * 0.025,
                        child: const VerticalDivider(
                          color: Colors.white70,
                          thickness: 0.3,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '11km',
                                style: AppFontTheme(16).textWhite,
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                'Visibility',
                                style: AppFontTheme(12).textWhite,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: altura * 0.025,
                        child: const VerticalDivider(
                          color: Colors.white70,
                          thickness: 0.3, //espesura da borda
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '10km/h',
                                style: AppFontTheme(16).textWhite,
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                'Wind',
                                style: AppFontTheme(12).textWhite,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 26,
              ),

              /// MODAL PREVISAO
              /// TODO: tirar o padding daqui
              Container(
                width: largura * 1.1,
                height: altura * 0.07,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: Text(
                  'Modal',
                  textAlign: TextAlign.center,
                  style: AppFontTheme(30).textBlack,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


// pastas pages
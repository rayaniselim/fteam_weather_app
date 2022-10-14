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
    MediaQuery.of(context).size.height;
    MediaQuery.of(context).size.width;
    final statusBar = MediaQuery.of(context).viewPadding.top;
    MediaQuery.of(context).viewPadding.bottom;
    return Scaffold(
      extendBody: true,
      // appBar: AppBar(
      //     // elevation: 0,
      //     // toolbarHeight: 0,
      //     // toolbarOpacity: 0.0,
      //     ),
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
          Padding(
            padding: const EdgeInsets.only(
              top: 0,
              right: 22,
              left: 22,
              bottom: 30,
            ),
            child: Column(
              children: [
                SizedBox(height: statusBar),
                Row(
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
                          style: AppFontTheme.textCidade,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '23°', // TODO: deixar a bolinha pequena
                      style: AppFontTheme.textTemperatura,
                    ),
                    Text(
                      "it's Sunny",
                      style: AppFontTheme.textIts,
                    ),
                  ],
                ),
                const Spacer(),

                /// DESCRICAO
                Container(
                  width: 363,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                /// MODAL PREVISAO
                Container(
                  color: Colors.red,
                  child: const Text(
                    'Modal',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:app_weather/app/modules/home/components/home_forecast_modal.dart';
import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';

import 'components/home_description_component.dart';
import 'components/home_heater_component.dart';
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
    // final statusBottom = MediaQuery.of(context).viewPadding.bottom;

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
            children: const [
              HomeHeaterComponent(),
              Spacer(),
              HomeDescriptionComponent(),
              SizedBox(
                height: 26,
              ),
              HomeForecastModal(),
            ],
          ),
        ],
      ),
    );
  }
}


// pastas pages
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class CardModalWeb extends StatelessWidget {
  const CardModalWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        CardTopWidgetWeb(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(14),
                child: FittedBox(
                  child: Text(
                    'Weather Today',
                    style: Theme.of(context)
                        .textTheme
                        .headline2
                        ?.copyWith(fontSize: 24),
                  ),
                ),
              ),
              //TODO: web
              SizedBox(
                height: size.height * 0.01,
              ),
              FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HoursWebWidget(
                      image: 'assets/images/chuva_branca.png',
                      heightImage: size.height * 0.05,
                      textHour: '05:00 AM',
                      fontSizeHour: 12,
                      textTemperature: '3',
                      fontSizeTemperature: 36,
                      fontSizeBolinha: 26,
                    ),
                    SizedBox(width: size.width * 0.018),
                    HoursWebWidget(
                      image: 'assets/images/nublado_branco.png',
                      heightImage: size.height * 0.05,
                      textHour: '06:00 AM',
                      fontSizeHour: 12,
                      textTemperature: '16',
                      fontSizeTemperature: 36,
                      fontSizeBolinha: 26,
                    ),
                    SizedBox(width: size.width * 0.018),
                    HoursWebWidget(
                      image: 'assets/images/sol.png',
                      heightImage: size.height * 0.05,
                      textHour: '07:00 AM',
                      fontSizeHour: 12,
                      textTemperature: '23',
                      fontSizeTemperature: 36,
                      fontSizeBolinha: 26,
                    ),
                    SizedBox(width: size.width * 0.018),
                    HoursWebWidget(
                      image: 'assets/images/sol.png',
                      heightImage: size.height * 0.05,
                      textHour: '08:00 AM',
                      fontSizeHour: 12,
                      textTemperature: '23',
                      fontSizeTemperature: 36,
                      fontSizeBolinha: 26,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

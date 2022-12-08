import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class CardForecastDayWeb extends StatelessWidget {
  final List<ForecastModel> forecastsList;

  final String textDay;
  final String textWind;
  final String textKmWind;

  final String textTemperature;
  final Image image;

  const CardForecastDayWeb({
    super.key,
    required this.textDay,
    required this.textTemperature,
    required this.image,
    required this.forecastsList,
    required this.textWind,
    required this.textKmWind,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final theme = Theme.of(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(14),
          child: Container(
            width: size.width * 0.10,
            height: size.height * 0.30,
            decoration: BoxDecoration(
              color: LightColors.colorsBlack26,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: LightColors.primaryColor,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  FittedBox(
                    child: Text(
                      'Day $textDay',
                      style: theme.textTheme.headline2!.copyWith(
                            fontSize: 20,
                            overflow: TextOverflow.ellipsis,
                          ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.025,
                    child: const Divider(
                      color: LightColors.primaryColor,
                      thickness: 0.6,
                    ),
                  ),
                  const Spacer(),
                  Center(
                    child: image,
                  ),
                  const Spacer(),
                  FittedBox(
                    child: Text(
                      textTemperature,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.headline2!.copyWith(
                            fontSize: 36,
                          ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.025,
                    child: const Divider(
                      color: LightColors.primaryColor,
                      thickness: 0.6,
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      textKmWind,
                      style: theme.textTheme.headline2!.copyWith(
                            fontSize: 20,
                            overflow: TextOverflow.ellipsis,
                          ),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      textWind,
                      style: theme.textTheme.headline2!.copyWith(
                            fontSize: 16,
                            overflow: TextOverflow.ellipsis,
                          ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.030,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

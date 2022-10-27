import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ForecastDayWeb extends StatelessWidget {
  final String textDay;
  final String textTemperature;
  final String image;

  const ForecastDayWeb({
    super.key,
    required this.textDay,
    required this.textTemperature,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Container(
            width: width * 0.09,
            height: height * 0.20,
            decoration: BoxDecoration(
              color: LightColors.colorsBlack38,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: LightColors.primaryColor,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  FittedBox(
                    child: Text(
                      textDay,
                      style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 20,
                            overflow: TextOverflow.ellipsis,
                          ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.025,
                    child: const Divider(
                      color: LightColors.primaryColor,
                      thickness: 0.6,
                    ),
                  ),
                  Spacer(),
                  Center(
                    child: Image.asset(
                      image,
                      height: 60,
                    ),
                  ),
                  Spacer(),
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      text: textTemperature,
                      style: Theme.of(context).textTheme.headline2!.copyWith(
                            fontSize: 36,
                          ),
                      children: <InlineSpan>[
                        WidgetSpan(
                          alignment: PlaceholderAlignment.top,
                          child: Text(
                            '°',
                            style: Theme.of(context)
                                .textTheme
                                .headline2!
                                .copyWith(fontSize: 26),
                          ),
                        ),
                      ],
                    ),
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

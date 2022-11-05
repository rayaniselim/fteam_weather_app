import 'package:flutter/material.dart';

class HoursWidgetMobile extends StatelessWidget {
  final String textHour;
  final String image;
  final String textTemperature;

  final double fontSizeTemperature;
  final double fontSizeHour;
  final double fontSizeBolinha;
  const HoursWidgetMobile(
      {super.key,
      required this.textHour,
      required this.image,
      required this.textTemperature,
      required this.fontSizeTemperature,
      required this.fontSizeHour,
      required this.fontSizeBolinha});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 0.04,
            child: Image.asset(
              image,
              // 'assets/images/nublado.png',
            ),
          ),
          SizedBox(
            height: height * 0.0038,
          ),
          Text(
            textHour,
            // '06:00 AM',
            style: Theme.of(context).textTheme.overline!.copyWith(
                  fontSize: fontSizeHour,
                ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: height * 0.0042,
          ),
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text: textTemperature,
              // '16',
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontSize: fontSizeTemperature,
                    //  30,
                  ),
              children: <InlineSpan>[
                WidgetSpan(
                  alignment: PlaceholderAlignment.top,
                  child: Text(
                    '°',
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontSize: fontSizeBolinha,
                          // 16,
                        ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.0041,
          )
        ],
      ),
    );
  }
}

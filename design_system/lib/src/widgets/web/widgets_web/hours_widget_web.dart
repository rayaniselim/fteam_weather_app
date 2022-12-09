import 'package:flutter/material.dart';

class HoursWebWidget extends StatelessWidget {
  final String textHour;
  final String image;
  final String textTemperature;
  final double heightImage;
  final double fontSizeTemperature;
  final double fontSizeHour;
  final double fontSizeBolinha;

  const HoursWebWidget({
    super.key,
    required this.textHour,
    required this.image,
    required this.textTemperature,
    required this.heightImage,
    required this.fontSizeTemperature,
    required this.fontSizeHour,
    required this.fontSizeBolinha,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final theme = Theme.of(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: heightImage,
            child: Image.asset(
              image,
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            textHour,
            style: theme.textTheme.caption!.copyWith(fontSize: fontSizeHour),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: height * 0.02,
          ),
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text: textTemperature,
              style: theme.textTheme.headline2!.copyWith(
                fontSize: fontSizeTemperature,
              ),
              children: <InlineSpan>[
                WidgetSpan(
                  alignment: PlaceholderAlignment.top,
                  child: Text(
                    '°',
                    style: theme.textTheme.headline2!.copyWith(
                      fontSize: fontSizeBolinha,
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

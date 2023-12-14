import 'package:flutter/material.dart';

class HoursWebWidget extends StatelessWidget {
  final String textHour;
  final String image;
  final String textTemperature;
  final double heightImage;
  final double widthImage;
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
    required this.widthImage,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: heightImage,
            width: widthImage,
            child: Image.asset(
              image,
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Text(
            textHour,
            style: theme.textTheme.bodySmall!.copyWith(fontSize: fontSizeHour),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text: textTemperature,
              style: theme.textTheme.displayMedium!.copyWith(
                fontSize: fontSizeTemperature,
              ),
              children: <InlineSpan>[
                WidgetSpan(
                  alignment: PlaceholderAlignment.top,
                  child: Text(
                    '°',
                    style: theme.textTheme.displayMedium!.copyWith(
                      fontSize: fontSizeBolinha,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.0041,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HoursWidgetMobile extends StatelessWidget {
  final String textDay;
  final String textWind;
  final Image image;
  final String textTemperature;
  final double fontSizeTemperature;
  final double fontSizeDay;
  final double fontSizeBolinha;

  const HoursWidgetMobile({
    super.key,
    required this.textDay,
    required this.image,
    required this.textTemperature,
    required this.fontSizeTemperature,
    required this.fontSizeDay,
    required this.fontSizeBolinha,
    required this.textWind,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Day $textDay',
            style: Theme.of(context).textTheme.overline!.copyWith(
                  fontSize: fontSizeDay,
                ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: height * 0.008,
          ),
          SizedBox(height: height * 0.04, child: image),
          SizedBox(
            height: height * 0.005,
          ),
          Text(
            textWind,
            style: Theme.of(context).textTheme.overline!.copyWith(
                  fontSize: fontSizeDay,
                ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: height * 0.0042,
          ),
          Text(
            textTemperature,
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontSize: fontSizeTemperature,
                ),
          ),
        ],
      ),
    );
  }
}

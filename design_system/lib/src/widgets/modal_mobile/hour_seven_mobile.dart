import 'package:flutter/material.dart';

class HourSevenMobile extends StatefulWidget {
  const HourSevenMobile({super.key});

  @override
  State<HourSevenMobile> createState() => _HourSevenMobileState();
}

class _HourSevenMobileState extends State<HourSevenMobile> {
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
              'assets/images/chuva.png',
              // scale: 1,
            ),
          ),
          SizedBox(
            height: height * 0.0038,
          ),
          Text(
            '07:00 AM',
            style: Theme.of(context).textTheme.overline,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: height * 0.0042,
          ),
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text: '3',
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    fontSize: 30,
                  ),
              children: <InlineSpan>[
                WidgetSpan(
                  alignment: PlaceholderAlignment.top,
                  child: Text(
                    '°',
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontSize: 16,
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

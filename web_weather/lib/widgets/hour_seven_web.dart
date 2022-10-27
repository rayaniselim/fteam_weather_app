import 'package:flutter/material.dart';

class HourSevenWeb extends StatefulWidget {
  const HourSevenWeb({super.key});

  @override
  State<HourSevenWeb> createState() => _HourSevenWebState();
}

class _HourSevenWebState extends State<HourSevenWeb> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 0.05,
            child: Image.asset(
              'assets/images/chuva_branca.png',
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            '07:00 AM',
            style: Theme.of(context).textTheme.caption,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: height * 0.02,
          ),
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text: '3',
              style: Theme.of(context).textTheme.headline2!.copyWith(
                    fontSize: 36,
                  ),
              children: <InlineSpan>[
                WidgetSpan(
                  alignment: PlaceholderAlignment.top,
                  child: Text(
                    '°',
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                          fontSize: 26,
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

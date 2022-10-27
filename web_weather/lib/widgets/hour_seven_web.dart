import 'package:flutter/material.dart';

class HourSevenWeb extends StatefulWidget {
  const HourSevenWeb({super.key});

  @override
  State<HourSevenWeb> createState() => _HourSevenWebState();
}

class _HourSevenWebState extends State<HourSevenWeb> {
  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: altura * 0.04,
            child: Image.asset(
              'assets/images/chuva.png',
              // scale: 1,
            ),
          ),
          SizedBox(
            height: altura * 0.0038,
          ),
          Text(
            '07:00 AM',
            style: Theme.of(context).textTheme.overline,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: altura * 0.0042,
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
            height: altura * 0.0041,
          )
        ],
      ),
    );
  }
}

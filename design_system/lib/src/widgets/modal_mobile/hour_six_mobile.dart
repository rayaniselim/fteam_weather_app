import 'package:flutter/material.dart';

class HourSixMobile extends StatefulWidget {
  const HourSixMobile({super.key});

  @override
  State<HourSixMobile> createState() => _HourSixMobileState();
}

class _HourSixMobileState extends State<HourSixMobile> {
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
              'assets/images/nublado.png',
              // scale: 1,
            ),
          ),
          SizedBox(
            height: height * 0.0038,
          ),
          Text(
            '06:00 AM',
            style: Theme.of(context).textTheme.overline,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: height * 0.0042,
          ),
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text: '16',
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

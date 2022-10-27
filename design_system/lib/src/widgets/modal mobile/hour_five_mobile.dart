import 'package:flutter/material.dart';

class HourFiveMobile extends StatefulWidget {
  const HourFiveMobile({
    super.key,
  });

  @override
  State<HourFiveMobile> createState() => _HourFiveMobileState();
}

class _HourFiveMobileState extends State<HourFiveMobile> {
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
              'assets/images/sol.png',
            ),
          ),
          SizedBox(
            height: height * 0.0038,
          ),
          Text(
            '05:00 AM',
            style: Theme.of(context).textTheme.overline,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: height * 0.0042,
          ),
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text: '23',
              style:
                  Theme.of(context).textTheme.headline5!.copyWith(fontSize: 30),
              children: <InlineSpan>[
                WidgetSpan(
                  alignment: PlaceholderAlignment.top,
                  child: Text(
                    '°',
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(fontSize: 16),
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

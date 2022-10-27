import 'package:flutter/material.dart';

class HourFiveWeb extends StatefulWidget {
  const HourFiveWeb({
    super.key,
  });

  @override
  State<HourFiveWeb> createState() => _HourFiveWebState();
}

class _HourFiveWebState extends State<HourFiveWeb> {
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
              'assets/images/sol.png',
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            '05:00 AM',
            style: Theme.of(context).textTheme.caption,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: height * 0.02,
          ),
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text: '23',
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
          SizedBox(
            height: height * 0.0041,
          )
        ],
      ),
    );
  }
}

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class WebAppBar extends StatefulWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  State<WebAppBar> createState() => _WebAppBarState();
}

class _WebAppBarState extends State<WebAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: LightColors.primaryColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 12,
              bottom: 12,
            ),
            child: Text(
              'Weather Day',
              style:
                  Theme.of(context).textTheme.headline5!.copyWith(fontSize: 20),
            ),
          ),
          const Spacer(),
          const SizedBox(
            width: 200,
            child: SearchWidgetDropDown(),
          ),
          const CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage(
              'assets/images/lago.jpeg',
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../design_system.dart';

class PageDropDown extends StatefulWidget {
  const PageDropDown({super.key});

  @override
  State<PageDropDown> createState() => _PageDropDownState();
}

class _PageDropDownState extends State<PageDropDown> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        iconTheme: Theme.of(context)
            .iconTheme
            .copyWith(color: LightColors.colorsTextGrey),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage(
                'assets/images/lago.jpeg',
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: const [
          Card(
            elevation: 0,
            child: SearchDropDown(),
          ),
        ],
      ),
    );
  }
}

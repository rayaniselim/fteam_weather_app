import 'package:flutter/material.dart';

import 'icon_button/search_dropdown.dart';

class IconButtonWidget extends StatelessWidget {
  final void Function()? onTap;
  const IconButtonWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const SearchDropDown())),
      icon: const Icon(
        Icons.view_headline_rounded,
        size: 30,
      ),
    );
  }
}

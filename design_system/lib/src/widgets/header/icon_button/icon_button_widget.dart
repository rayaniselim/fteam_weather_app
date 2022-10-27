import 'package:flutter/material.dart';

import 'page_dropdown.dart';

class IconButtonWidget extends StatelessWidget {
  final void Function()? onTap;
  const IconButtonWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const PageDropDown())),
      icon: const Icon(
        Icons.view_headline_rounded,
        size: 30,
      ),
    );
  }
}

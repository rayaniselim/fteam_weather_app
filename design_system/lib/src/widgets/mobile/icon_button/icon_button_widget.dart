import 'package:flutter/material.dart';

import '../page_mobile/page_dropdown.dart';

class IconButtonWidget extends StatelessWidget {
  final void Function()? onTap;
  const IconButtonWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      // TODO usar o onTap que vem pelo construtor
      onPressed: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const PageDropDown())),
      icon: const Icon(
        Icons.view_headline_rounded,
        size: 30,
      ),
    );
  }
}

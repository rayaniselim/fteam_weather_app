import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final void Function()? onTap;
  const IconButtonWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.view_headline_rounded,
        size: 30,
      ),

      //      IconButton(
      // onPressed: () {},
      // icon: const Icon(Icons.search),
    );
  }
}

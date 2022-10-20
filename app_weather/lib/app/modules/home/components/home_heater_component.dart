import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomeHeaterComponent extends StatelessWidget {
  final void Function()? onTap;

  const HomeHeaterComponent({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final statusBar = MediaQuery.of(context).viewPadding.top;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: statusBar,
            right: 22,
            left: 22,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // ValueListenableBuilder(
              //   valueListenable: ,
              //   builder: (BuildContext context, value, _) {

              //     child:
              Row(
                children: [
                  const Icon(
                    Icons.location_on_sharp,
                    color: Colors.white,
                    size: 18,
                  ),
                  Text(
                    ' cidade',
                    style: AppFontTheme(24).textWhite,
                  ),
                ],
              ),
              // },
              // ),

              /// TODO: PESQUISA
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.view_headline_rounded,
                  size: 30,
                ),
              ),
              //      IconButton(
              // onPressed: () {},
              // icon: const Icon(Icons.search),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 22,
            left: 22,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '23°', // TODO: deixar a bolinha pequena
                style: AppFontTheme(130).textWhite,
              ),
              Text(
                "it's Sunny",
                style: AppFontTheme(20).textWhite,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

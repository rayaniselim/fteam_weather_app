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
              Row(
                children: [
                  const Icon(
                    Icons.location_on_sharp,
                    size: 18,
                  ),
                  Text(
                    ' cidade',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),

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
              RichText(
                textAlign: TextAlign.left,
                text: TextSpan(
                  text: '24',
                  style: Theme.of(context)
                      .textTheme
                      .headline2
                      ?.copyWith(fontSize: 120),
                  children: <InlineSpan>[
                    WidgetSpan(
                      alignment: PlaceholderAlignment.top,
                      child: Text(
                        '°',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "it's Sunny",
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

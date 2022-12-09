import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  final Function(String)? onSubmitted;
  const WebAppBar({
    Key? key,
    required this.onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();

    return AppBar(
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
          SizedBox(
            //TODO Responsivo
            // width: 230,
            width: MediaQuery.of(context).size.width *
                0.22, //22.46 de 1024 pixels 15 polegadas
            child: SearchWidgetDropDown(
              onSubmitted: onSubmitted,
              textController: textController,
            ),
          ),
          const CircleAvatar(
            radius: 22,
            backgroundImage: Images.lago,
          ),
        ],
      ),
    );
  }
}

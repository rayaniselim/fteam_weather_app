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
    final size = MediaQuery.of(context).size;

    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(
              size.height * 0.020,
            ),
            child: Text(
              'Weather Day',
              style:
                  Theme.of(context).textTheme.headline5!.copyWith(fontSize: 20),
            ),
          ),
          const Spacer(),
          SizedBox(
            width: size.width * 0.16,
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

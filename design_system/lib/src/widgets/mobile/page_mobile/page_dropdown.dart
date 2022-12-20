import 'package:flutter/material.dart';

import '../../../../design_system.dart';

class PageDropDown extends StatelessWidget {
  final void Function(String) onSubmitted;
  const PageDropDown({
    super.key,
    required this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        iconTheme: theme.iconTheme.copyWith(color: LightColors.colorsTextGrey),
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8),
            child: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage(
                Images.lago,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Card(
            elevation: 0,
            child: SearchWidgetDropDown(
              onSubmitted: onSubmitted,
              textController: textController,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../design_system.dart';

class PageDropDown extends StatefulWidget {
  const PageDropDown({
    super.key,
  });

  @override
  State<PageDropDown> createState() => _PageDropDownState();
}

class _PageDropDownState extends State<PageDropDown> {
  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    Function(String)? onSubmitted;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).backgroundColor,
        // TODO: Verificar se o background está sendo chamado pelo theme
        iconTheme: theme.iconTheme.copyWith(color: LightColors.colorsTextGrey),
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8),
            child: CircleAvatar(
              radius: 22,
              backgroundImage: Images.lago,
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

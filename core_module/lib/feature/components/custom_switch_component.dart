import 'package:core_module/feature/controller/app_controller.dart';
import 'package:flutter/material.dart';

class CustomSwitchComponent extends StatelessWidget {
  const CustomSwitchComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.themeSwitch.value,
      onChanged: (value) {
        AppController.instance.changeTheme(value);
      },
    );
  }
}

import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';

void main() {
  runApp(
    ModularApp(module: AppModule(), child: const AppWidget()),
  );
}

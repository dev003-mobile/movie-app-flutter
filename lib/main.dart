import "package:flutter/material.dart";

import "src/core/presenter/app/app_widget.dart";
import "src/core/presenter/injections/injections.dart";

void main() {
  Injections.initialize();
  runApp(const AppWidget());
}
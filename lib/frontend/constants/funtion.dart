import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

bool isDarkMode(BuildContext context) {
  return Theme.of(context).brightness == Brightness.dark;
}

hideStatusBar() {
  return SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
}

textTheme(BuildContext context) {
  return Theme.of(context).textTheme;
}

colorScheme(BuildContext context) {
  return Theme.of(context).colorScheme;
}

wMediaQuery(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

import 'package:flutter/widgets.dart';

class Config {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static bool isWeb = false;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData?.size.width;
    screenHeight = _mediaQueryData?.size.height;
    isWeb = (screenWidth! > 600) ? true : false;
  }
}

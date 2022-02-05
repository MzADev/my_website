import 'package:flutter/material.dart';

import 'package:my_website/screens/about_me/index_mobile.dart';
import 'package:my_website/screens/about_me/index_web.dart';
import 'package:my_website/utils/config.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Config().init(context);

    return Config.isWeb ? const AboutMeWeb() : const AboutMeMobile();
  }
}

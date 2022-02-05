import 'package:flutter/material.dart';
import 'package:my_website/components/background_particle.dart';
import 'package:my_website/utils/colors.dart';
import 'package:my_website/utils/config.dart';

import 'widgets/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundParticle(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).padding.top + 32),
                const Header(),
                const Expanded(flex: 2, child: SizedBox()),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Hi! I’m Marzieh Abedinia.\n'
                    'I’m a Flutter developer.',
                    style: TextStyle(
                      fontSize: Config.isWeb ? 60 : 30,
                      fontWeight: FontWeight.bold,
                      color: AppColors.grey8,
                    ),
                  ),
                ),
                const Expanded(flex: 3, child: SizedBox()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

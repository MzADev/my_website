import 'package:flutter/material.dart';

import 'package:my_website/components/background_particle.dart';
import 'package:my_website/data/strings.dart';
import 'package:my_website/utils/colors.dart';

import 'widgets/header.dart';

class AboutMeWeb extends StatelessWidget {
  const AboutMeWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundParticle(),
          Column(
            children: [
              const Header(),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            aboutMeTitle,
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: AppColors.grey7,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Text(aboutMeSubTitle,
                              style: TextStyle(
                                fontSize: 18,
                                color: AppColors.grey7,
                                height: 1.3,
                              )),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(child: Image.asset('lib/assets/images/bird.png')),
                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:my_website/components/background_particle.dart';
import 'package:my_website/data/strings.dart';
import 'package:my_website/utils/colors.dart';

import 'widgets/header.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundParticle(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Header(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  aboutMeTitle,
                  style: TextStyle(
                    fontSize: 26.sp,
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
                      fontSize: 14.sp,
                      color: AppColors.grey7,
                      height: 1.3,
                    )),
              ),
              const SizedBox(height: 16),
              Expanded(child: Image.asset('lib/assets/images/bird.png')),
            ],
          ),
        ],
      ),
    );
  }
}

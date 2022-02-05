import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_website/routes/router.dart';
import 'package:my_website/utils/colors.dart';
import 'package:my_website/utils/config.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        children: [
          titleButton('My Projects', () {
            Navigator.pushNamed(context, myProjectsRoute);
          }),
          const SizedBox(width: 14),
          titleButton('About Me', () {
            Navigator.pushNamed(context, aboutMeRoute);
          }),
        ],
      ),
    );
  }

  Widget titleButton(String title, onPressed) {
    return TextButton(
        onPressed: onPressed,
        child: Hero(
          tag: title,
          child: Text(
            title,
            style: TextStyle(
                fontSize: Config.isWeb ? 14 : 15.sp,
                fontFamily: 'NotoSans',
                fontWeight: FontWeight.bold,
                color: AppColors.grey8),
          ),
        ));
  }
}

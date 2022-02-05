import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_website/utils/colors.dart';
import 'package:my_website/utils/config.dart';

class ProjectDescription extends StatelessWidget {
  final String description;

  const ProjectDescription({Key? key, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      padding: const EdgeInsets.only(left: 12),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          description,
          style: TextStyle(
            fontSize: Config.isWeb ? 14 : 14.sp,
            color: AppColors.grey8,
          ),
        ),
      ),
    );
  }
}

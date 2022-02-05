import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:my_website/models/my_projects_model.dart';
import 'package:my_website/routes/router.dart';
import 'package:my_website/utils/colors.dart';
import 'package:my_website/utils/config.dart';
import 'package:url_launcher/url_launcher.dart';

class CardItem extends StatelessWidget {
  final ProjectsModel? projectsModel;

  const CardItem({Key? key, @required this.projectsModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.pushNamed(
          context,
          projectScreenRoute,
          arguments: projectsModel,
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          children: [
            Image.asset(
              projectsModel!.logo,
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 8),
            Hero(
              tag: projectsModel!.title,
              child: Text(
                projectsModel!.title,
                style: TextStyle(
                    fontSize: Config.isWeb ? 20 : 20.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.grey7),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              projectsModel!.shortDescription,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: Config.isWeb ? 14 : 14.sp,
                color: AppColors.grey7,
              ),
            ),
            if (projectsModel?.downloadPath != null)
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () => _launchURL(),
                  child: Text('see ${projectsModel?.title} in bazar',
                      style: TextStyle(
                        fontSize: Config.isWeb ? 14 : 14.sp,
                      )),
                ),
              )
          ],
        ),
      ),
    );
  }

  void _launchURL() async {
    String _url = projectsModel?.downloadPath ?? '';
    if (!await launch(_url)) throw 'Could not launch $_url';
  }
}

import 'package:card_swiper/card_swiper.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:my_website/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:my_website/components/background_particle.dart';
import 'package:my_website/models/my_projects_model.dart';
import 'package:my_website/screens/project_screen/widgets/project_description.dart';
import 'package:my_website/screens/project_screen/widgets/project_name.dart';

class ProjectScreen extends StatelessWidget {
  final ProjectsModel projectsModel;

  const ProjectScreen({Key? key, required this.projectsModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundParticle(),
          Column(
            children: [
              const SizedBox(height: 20),
              Row(
                children: [
                  ProjectName(name: projectsModel.title),
                  if (projectsModel.downloadPath != null)
                    IconButton(
                        onPressed: () => _launchURL(),
                        icon: Icon(
                          EvaIcons.downloadOutline,
                          size: 36,
                          color: AppColors.grey8,
                        ))
                ],
              ),
              const SizedBox(height: 8),
              ProjectDescription(description: projectsModel.description),
              const SizedBox(height: 20),
              Expanded(
                child: Swiper(
                  loop: true,
                  autoplay: true,
                  duration: 2000,
                  autoplayDelay: 5000,
                  itemCount: projectsModel.images.length,
                  itemBuilder: (context, i) {
                    return Image.asset(projectsModel.images[i]);
                  },
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }

  void _launchURL() async {
    String _url = projectsModel.downloadPath ?? '';
    if (!await launch(_url)) throw 'Could not launch $_url';
  }
}

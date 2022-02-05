import 'package:flutter/material.dart';
import 'package:my_website/models/my_projects_model.dart';
import 'package:my_website/screens/about_me/index.dart';
import 'package:my_website/screens/home/index.dart';
import 'package:my_website/screens/my_projects/index.dart';
import 'package:my_website/screens/project_screen/index.dart';

import 'router.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  final arguments = settings.arguments;
  switch (settings.name) {
    case myHomePageRoute:
      return MaterialPageRoute(builder: (_) => const HomePage());
    case myProjectsRoute:
      return MaterialPageRoute(builder: (_) => const MyProjects());
    case aboutMeRoute:
      return MaterialPageRoute(builder: (_) => const AboutMe());
    case projectScreenRoute:
      return MaterialPageRoute(
          builder: (_) => ProjectScreen(
                projectsModel: arguments as ProjectsModel,
              ));

    default:
      return MaterialPageRoute(builder: (_) => const HomePage());
  }
}

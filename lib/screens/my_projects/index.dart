import 'package:flutter/material.dart';
import 'package:my_website/components/background_particle.dart';
import 'package:my_website/data/my_projects_data.dart';
import 'package:my_website/screens/my_projects/widgets/card_item.dart';
import 'package:my_website/utils/config.dart';

import 'widgets/header.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Config().init(context);

    return Scaffold(
      body: Stack(
        children: [
          const BackgroundParticle(),
          const Header(),
          Config.isWeb ? getGridUI() : getListUI(),
        ],
      ),
    );
  }

  Widget getGridUI() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(top: 80),
        child: Wrap(
          children: myProjectsData.map((projectsModel) {
            return Container(
              width: 400,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
              child: CardItem(
                projectsModel: projectsModel,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget getListUI() {
    return ListView.separated(
      padding: const EdgeInsets.only(top: 80, right: 26, left: 26, bottom: 8),
      itemCount: myProjectsData.length,
      separatorBuilder: (context, index) {
        return const Padding(padding: EdgeInsets.symmetric(vertical: 14));
      },
      itemBuilder: (context, index) {
        return CardItem(
          projectsModel: myProjectsData[index],
        );
      },
    );
  }
}

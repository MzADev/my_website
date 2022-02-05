import 'package:flutter/material.dart';
import 'package:my_website/utils/colors.dart';

class ProjectName extends StatelessWidget {
  final String name;

  const ProjectName({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Hero(
          tag: name,
          child: Text(
            name,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: AppColors.grey8,
            ),
          ),
        ),
      ),
    );
  }
}

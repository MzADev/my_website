import 'package:flutter/material.dart';
import 'package:my_website/utils/colors.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.only(left: 12),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Hero(
          tag: 'My Projects',
          child: Text(
            'My Projects',
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

import 'package:flutter/material.dart';
import 'package:my_postfolio/contant/responsive.dart';

class BuildSocialButton extends StatelessWidget {
  final IconData icon;
  const BuildSocialButton({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Expanded(
            child: Icon(
              icon,
              color: Colors.white,
              size: 25,
            ),
          )
        : Icon(
            icon,
            color: Colors.white,
            size: 40,
          );
  }
}

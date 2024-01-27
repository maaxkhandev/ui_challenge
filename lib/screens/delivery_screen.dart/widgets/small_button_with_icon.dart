import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/app_colors.dart';
import '../../../config/app_textstyle.dart';
import '../../../config/constants.dart';

class SmallButtonWithIcon extends StatelessWidget {
  const SmallButtonWithIcon({
    Key? key,
    required this.text,
    required this.icon,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final String icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: Constants.defaultSpacingH * .8,
            vertical: Constants.defaultSpacingV * .2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Constants.bordersRadius * 3),
            border: Border.all(color: AppColors.lightGrey, width: 1.6)),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              width: 18,
            ),
            Constants.hSpace(.4),
            Text(
              text,
              style: AppTextstyle.bodyMedium(),
            )
          ],
        ),
      ),
    );
  }
}

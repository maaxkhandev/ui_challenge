import 'package:flutter/material.dart';
import '../config/app_colors.dart';
import '../config/constants.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {Key? key, required this.icon, this.size, this.backgroundColor})
      : super(key: key);
  final Widget icon;
  final double? size;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size ?? 45,
      height: size ?? 45,
      margin: const EdgeInsets.only(
        right: Constants.defaultSpacing * .2,
      ),
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.primaryColor,
        borderRadius: BorderRadius.circular(
          Constants.bordersRadius * 1.2,
        ),
      ),
      child: icon,
    );
  }
}

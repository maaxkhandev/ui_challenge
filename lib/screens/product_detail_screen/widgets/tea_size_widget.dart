// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffe_shop_app/config/app_textstyle.dart';
import 'package:coffe_shop_app/config/constants.dart';
import 'package:flutter/material.dart';

import '../../../../config/app_colors.dart';

class TeaSizeWidget extends StatelessWidget {
  const TeaSizeWidget({
    Key? key,
    required this.teaSize,
    required this.onClick,
  }) : super(key: key);
  final String teaSize;
  final Function(String) onClick;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Size',
          style: AppTextstyle.title(),
        ),
        Constants.vSpace(.4),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
                onTap: () => onClick('S'), child: coffeSizeButton(size: 'S')),
            InkWell(
                onTap: () => onClick('M'), child: coffeSizeButton(size: 'M')),
            InkWell(
                onTap: () => onClick('L'), child: coffeSizeButton(size: 'L')),
          ],
        )
      ],
    );
  }

  Widget coffeSizeButton({required String size}) {
    return Container(
      margin: const EdgeInsets.only(left: Constants.defaultSpacing * .4),
      padding: const EdgeInsets.symmetric(
          horizontal: Constants.defaultSpacingH * 2,
          vertical: Constants.defaultSpacingV * .4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Constants.bordersRadius * 1.5),
          border: Border.all(
              color: teaSize == size
                  ? AppColors.primaryColor
                  : AppColors.lightGrey),
          color: teaSize == size
              ? AppColors.primaryColor.withOpacity(.1)
              : Colors.transparent),
      child: Text(
        size,
        style: TextStyle(
            fontSize: 18,
            color:
                teaSize == size ? AppColors.primaryColor : AppColors.textBlack),
      ),
    );
  }
}

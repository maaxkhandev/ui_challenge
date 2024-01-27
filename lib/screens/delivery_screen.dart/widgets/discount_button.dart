import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/app_colors.dart';
import '../../../config/app_images.dart';
import '../../../config/app_textstyle.dart';
import '../../../config/constants.dart';

class DiscountButton extends StatelessWidget {
  const DiscountButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: Constants.defaultSpacingH,
          vertical: Constants.defaultSpacingV * .8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            Constants.bordersRadius * 2,
          ),
          border: Border.all(color: AppColors.lightGrey, width: 1.6)),
      child: Row(
        children: [
          SvgPicture.asset(AppImages.svgImage.discount),
          Constants.hSpace(.6),
          Text(
            '1 Discount is applied',
            style: AppTextstyle.title(),
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios,
            size: 18,
          )
        ],
      ),
    );
  }
}

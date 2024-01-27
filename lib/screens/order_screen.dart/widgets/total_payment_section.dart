import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/app_colors.dart';
import '../../../config/app_images.dart';
import '../../../config/app_textstyle.dart';
import '../../../config/constants.dart';

class TotalPaymentSection extends StatelessWidget {
  const TotalPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total Payment',
              style: AppTextstyle.bodyLarge(),
            ),
            Text(
              '\$ 4.53',
              style: AppTextstyle.titleLarge(),
            )
          ],
        ),
        Constants.vSpace(.6),
        Row(
          children: [
            SvgPicture.asset(
              AppImages.svgImage.moneys,
              width: 26,
            ),
            Constants.hSpace(.6),
            Container(
              decoration: BoxDecoration(
                color: AppColors.lightGrey,
                borderRadius: BorderRadius.circular(
                  Constants.bordersRadius * 3,
                ),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Constants.defaultSpacing * .8,
                      vertical: Constants.defaultSpacing * .2,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(
                        Constants.bordersRadius * 3,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'Cash',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Constants.hSpace(.5),
                  const Padding(
                    padding: EdgeInsets.only(
                      right: Constants.defaultSpacing * .8,
                      top: Constants.defaultSpacing * .2,
                      bottom: Constants.defaultSpacing * .2,
                    ),
                    child: Text(
                      '\$5.53',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            IconButton(
              constraints: const BoxConstraints(),
              iconSize: 16,
              padding: const EdgeInsets.all(Constants.defaultSpacing * .12),
              style: IconButton.styleFrom(
                backgroundColor: Colors.grey[600],
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(Constants.bordersRadius * 10),
                ),
              ),
              onPressed: () {},
              icon: Icon(
                Icons.more_horiz,
                color: AppColors.secondryColor,
                size: 26,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

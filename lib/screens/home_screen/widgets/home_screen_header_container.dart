// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../config/app_colors.dart';
import '../../../config/app_images.dart';
import '../../../config/constants.dart';
import '../../../widgets/custom_icon_button.dart';

class HomeScreenHeaderContainer extends StatelessWidget {
  const HomeScreenHeaderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      padding: const EdgeInsets.only(
        top: Constants.defaultSpacing * 4,
        left: Constants.defaultSpacing * 1.5,
        right: Constants.defaultSpacing * 1.5,
      ),
      color: AppColors.lightBlack,
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.35,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Location',
                    style: TextStyle(color: AppColors.lightGrey),
                  ),
                  Constants.vSpace(0.2),
                  Text(
                    'Bilzen, Tanjungbalai',
                    style: TextStyle(
                      color: AppColors.secondryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.pngImage.profile),
                  ),
                ),
              ),
            ],
          ),
          Constants.vSpace(),
          TextField(
            style: TextStyle(color: AppColors.secondryColor),
            cursorColor: AppColors.secondryColor,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.darkGrey, // Background color
              hintText: 'Search...',
              hintStyle: const TextStyle(color: Colors.grey),
              contentPadding: const EdgeInsets.all(
                Constants.defaultSpacing * .8,
              ),

              border: OutlineInputBorder(
                borderSide: BorderSide.none, // No borders
                borderRadius: BorderRadius.circular(
                  Constants.bordersRadius * 2,
                ),
              ),
              prefixIcon: SvgPicture.asset(
                AppImages.svgImage.search,
                fit: BoxFit.scaleDown,
              ),
              suffixIconConstraints: const BoxConstraints(),
              suffixIcon: CustomIconButton(
                icon: SvgPicture.asset(
                  AppImages.svgImage.filter,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

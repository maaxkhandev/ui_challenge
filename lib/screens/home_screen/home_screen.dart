import 'package:coffe_shop_app/config/app_colors.dart';
import 'package:coffe_shop_app/config/app_images.dart';
import 'package:coffe_shop_app/config/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'widgets/home_screen_header_container.dart';
import 'widgets/home_screen_main_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Column(
        children: [
          HomeScreenHeaderContainer(),
          HomeScreenMainContainer(),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(Constants.bordersRadius * 4.0),
          topRight: Radius.circular(Constants.bordersRadius * 4.0),
        ),
        child: BottomNavigationBar(
          backgroundColor: AppColors.secondryColor,
          elevation: 3,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppImages.svgImage.home,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.svgImage.heart),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.svgImage.bag),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppImages.svgImage.notification),
              label: '',
            ),
          ],
          // this will stop the animation
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}

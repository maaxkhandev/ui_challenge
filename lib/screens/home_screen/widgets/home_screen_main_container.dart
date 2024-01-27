import 'package:coffe_shop_app/config/app_data.dart';
import 'package:flutter/material.dart';

import '../../../config/app_colors.dart';
import '../../../config/app_images.dart';
import '../../../config/constants.dart';
import '../../../widgets/custom_single_choice_chiplist.dart';
import 'coffe_card.dart';

class HomeScreenMainContainer extends StatefulWidget {
  const HomeScreenMainContainer({super.key});

  @override
  State<HomeScreenMainContainer> createState() =>
      _HomeScreenMainContainerState();
}

class _HomeScreenMainContainerState extends State<HomeScreenMainContainer> {
  String selectedCategory = 'Cappuccino';
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroundColor,
      height: MediaQuery.of(context).size.height * 0.55,
      padding: const EdgeInsets.symmetric(
          horizontal: Constants.defaultSpacingH * 1.5),
      width: double.infinity,
      child: Stack(
        fit: StackFit.loose,
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              Constants.vSpace(4.2),
              CustomSingleSelectChipList(
                options: const ['Cappuccino', 'Machiato', 'Latte', 'Americano'],
                selectedOption: selectedCategory,
                onSelect: (val) {
                  setState(() => selectedCategory = val);
                },
              ),
              Constants.vSpace(.5),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    mainAxisExtent: 245,
                  ),
                  padding: const EdgeInsets.only(
                      bottom: Constants.defaultSpacing * 10),
                  itemCount: AppData.coffeList.length, // total number of items
                  itemBuilder: (context, index) {
                    final coffe = AppData.coffeList[index];
                    return CoffeCard(coffe: coffe);
                  },
                ),
              ),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            top: -80,
            child: Container(
              clipBehavior: Clip.hardEdge,
              width: double.infinity,
              height: 150,
              padding: const EdgeInsets.symmetric(
                  horizontal: Constants.defaultSpacingH * 1.5,
                  vertical: Constants.defaultSpacingV * .3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  Constants.defaultSpacing * 1.2,
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    AppImages.pngImage.homeScreenMainCard,
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.redColor,
                      foregroundColor: AppColors.secondryColor,
                      minimumSize: const Size(40, 30),
                      padding: const EdgeInsets.symmetric(
                        horizontal: Constants.defaultSpacingH * .4,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            Constants.bordersRadius * 1.8),
                      ),
                    ),
                    child: const Text(
                      'Promo',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                  // Constants.vSpace(),
                  Image.asset(AppImages.pngImage.promo)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

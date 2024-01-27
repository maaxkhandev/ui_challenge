import 'package:coffe_shop_app/config/app_textstyle.dart';
import 'package:flutter/material.dart';

import '../../../config/app_colors.dart';
import '../../../config/constants.dart';
import '../../../models/coffe_model.dart';
import '../../../widgets/custom_icon_button.dart';

class CoffeCard extends StatelessWidget {
  const CoffeCard({
    super.key,
    required this.coffe,
  });

  final CoffeModel coffe;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: AppColors.secondryColor,
        borderRadius: BorderRadius.circular(
          Constants.bordersRadius * 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.width * .30,
            width: MediaQuery.of(context).size.width * .40,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: AppColors.redColor,
              borderRadius: BorderRadius.circular(
                Constants.bordersRadius * 2,
              ),
            ),
            child: Image.asset(
              coffe.thumbnail,
              fit: BoxFit.cover,
            ),
          ),
          // Constants.vSpace(.5),
          Padding(
            padding: const EdgeInsets.all(Constants.defaultSpacing * .6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  coffe.name,
                  style: AppTextstyle.title(),
                ),
                Text(
                  coffe.description,
                  style: AppTextstyle.label(),
                ),
                Constants.vSpace(.4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$ ${coffe.price}}',
                      style: AppTextstyle.titleLarge(),
                    ),
                    CustomIconButton(
                      size: 35,
                      icon: Icon(
                        Icons.add,
                        color: AppColors.secondryColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../config/app_colors.dart';
import '../../../config/app_images.dart';
import '../../../config/app_textstyle.dart';
import '../../../config/constants.dart';

class CoffeQuantity extends StatefulWidget {
  const CoffeQuantity({
    super.key,
  });

  @override
  State<CoffeQuantity> createState() => _CoffeQuantityState();
}

class _CoffeQuantityState extends State<CoffeQuantity> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(
          Constants.bordersRadius * 2,
        ),
        child: Image.asset(
          AppImages.pngImage.coffe1,
        ),
      ),
      title: Text(
        'Cappuccino',
        style: AppTextstyle.titleLarge(),
      ),
      subtitle: Text(
        'with chocolate',
        style: AppTextstyle.labelLarge(),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            constraints: const BoxConstraints(),
            iconSize: 20,
            padding: const EdgeInsets.all(Constants.defaultSpacing * .4),
            style: IconButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(Constants.bordersRadius * 10),
                side: BorderSide(
                  color: AppColors.lightGrey,
                  width: 2,
                ),
              ),
            ),
            onPressed: () {
              setState(() => quantity = quantity + 1);
            },
            icon: Icon(
              Icons.add,
              color: AppColors.textBlack,
            ),
          ),
          Constants.hSpace(.4),
          Text(
            quantity.toString(),
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Constants.hSpace(.4),
          IconButton(
            constraints: const BoxConstraints(),
            iconSize: 20,
            padding: const EdgeInsets.all(Constants.defaultSpacing * .4),
            style: IconButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(Constants.bordersRadius * 10),
                side: BorderSide(
                  color: AppColors.lightGrey,
                  width: 2,
                ),
              ),
            ),
            onPressed: () {
              setState(() {
                if (quantity > 1) {
                  quantity = quantity - 1;
                }
              });
            },
            icon: Icon(
              Icons.remove,
              color: AppColors.textBlack,
            ),
          ),
        ],
      ),
    );
  }
}

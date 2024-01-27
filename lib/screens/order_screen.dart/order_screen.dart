// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffe_shop_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:coffe_shop_app/config/app_colors.dart';
import 'package:coffe_shop_app/config/app_images.dart';
import 'package:coffe_shop_app/config/constants.dart';

import '../../config/app_textstyle.dart';
import '../../widgets/custom_switch_button.dart';
import 'widgets/coffe_quantity.dart';
import 'widgets/discount_button.dart';
import 'widgets/small_button_with_icon.dart';
import 'widgets/total_payment_section.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
        title: Text(
          'Order',
          style: AppTextstyle.titleLarge(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: Constants.defaultSpacingH * 1.5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Constants.vSpace(),
              CustomSwitchButton(
                onSelect: (v) {},
              ),
              Constants.vSpace(),
              Text(
                'Delivery Address',
                style: AppTextstyle.titleLarge(),
              ),
              Constants.vSpace(.6),
              Text(
                'Jl. Kpg Sutoyo',
                style: AppTextstyle.titleLarge(),
              ),
              Constants.vSpace(.2),
              Text(
                'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
                style: AppTextstyle.labelLarge(),
              ),
              Constants.vSpace(),
              Row(
                children: [
                  SmallButtonWithIcon(
                    icon: AppImages.svgImage.edit,
                    text: 'Edit Address',
                    onTap: () {},
                  ),
                  Constants.hSpace(.6),
                  SmallButtonWithIcon(
                    icon: AppImages.svgImage.edit,
                    text: 'Add Note',
                    onTap: () {},
                  ),
                ],
              ),
              Constants.vSpace(),
              Divider(
                color: AppColors.lightGrey,
              ),
              Constants.vSpace(),
              const CoffeQuantity(),
              Constants.vSpace(),
              Divider(
                color: AppColors.lightGrey,
                thickness: 2,
              ),
              Constants.vSpace(.8),
              const DiscountButton(),
              Constants.vSpace(),
              Text(
                'Payment Summary',
                style: AppTextstyle.titleLarge(),
              ),
              Constants.vSpace(),
              price(),
              Constants.vSpace(.6),
              deliveryFee(),
              Constants.vSpace(.5),
              Divider(
                color: AppColors.lightGrey,
                thickness: 2,
              ),
              Constants.vSpace(.5),
              const TotalPaymentSection(),
              Constants.vSpace(),
              CustomElevatedButton(text: 'Order', onTap: () {})
            ],
          ),
        ),
      ),
    );
  }

  Row price() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Price',
          style: AppTextstyle.bodyLarge(),
        ),
        Text(
          '\$ 4.53',
          style: AppTextstyle.titleLarge(),
        )
      ],
    );
  }

  Row deliveryFee() {
    return Row(
      children: [
        Text(
          'Delivery Fee',
          style: AppTextstyle.bodyLarge(),
        ),
        const Spacer(),
        Text(
          '\$2.0',
          style: TextStyle(
              fontSize: 16,
              color: AppColors.textBlack,
              decoration: TextDecoration.lineThrough),
        ),
        Constants.hSpace(.4),
        Text(
          '\$4.53',
          style: AppTextstyle.titleLarge(),
        )
      ],
    );
  }
}

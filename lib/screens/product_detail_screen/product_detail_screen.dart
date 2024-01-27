// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'package:coffe_shop_app/config/app_colors.dart';
import 'package:coffe_shop_app/config/app_data.dart';
import 'package:coffe_shop_app/config/app_images.dart';
import 'package:coffe_shop_app/config/app_textstyle.dart';
import 'package:coffe_shop_app/config/constants.dart';
import 'package:coffe_shop_app/screens/product_detail_screen/widgets/tea_size_widget.dart';

import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  String teaSize = 'M';
  @override
  Widget build(BuildContext context) {
    final coffe = AppData.coffeList[0];
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(AppImages.svgImage.favorite))
        ],
        title: Text(
          'Detail',
          style: AppTextstyle.titleLarge(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: Constants.defaultSpacingH * 1.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Constants.vSpace(),
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(Constants.bordersRadius * 2),
                image: DecorationImage(
                    image: AssetImage(
                      coffe.thumbnail,
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Constants.vSpace(),
            Text(
              coffe.name,
              style: AppTextstyle.titleLarge(),
            ),
            Constants.vSpace(.2),
            Text(
              coffe.description,
              style: AppTextstyle.labelLarge(),
            ),
            Constants.vSpace(.8),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[700],
                  size: 30,
                ),
                Constants.hSpace(.2),
                RichText(
                  text: TextSpan(
                    text: "4.8",
                    style: AppTextstyle.title(),
                    children: [
                      TextSpan(text: " (230)", style: AppTextstyle.label())
                    ],
                  ),
                ),
                const Spacer(),
                CustomIconButton(
                  backgroundColor: AppColors.lightGrey,
                  icon: Icon(
                    Icons.my_library_books_sharp,
                    color: AppColors.primaryColor,
                  ),
                ),
                Constants.hSpace(.5),
                CustomIconButton(
                  backgroundColor: AppColors.lightGrey,
                  icon: Icon(
                    Icons.my_library_books_sharp,
                    color: AppColors.primaryColor,
                  ),
                )
              ],
            ),
            Constants.vSpace(),
            Divider(
              color: AppColors.lightGrey,
            ),
            Constants.vSpace(.4),
            Text(
              'Description',
              style: AppTextstyle.title(),
            ),
            Constants.vSpace(.6),
            Text(
              'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More',
              style: AppTextstyle.labelLarge(),
            ),
            Constants.vSpace(),
            TeaSizeWidget(
              teaSize: teaSize,
              onClick: (v) {
                setState(() => teaSize = v);
              },
            ),
            Constants.vSpace(2),
            Row(
              children: [
                Column(
                  children: [
                    Text('Price', style: AppTextstyle.label()),
                    Constants.vSpace(.2),
                    Text(
                      coffe.price.toString(),
                      style: AppTextstyle.titleLarge(
                          color: AppColors.primaryColor),
                    ),
                  ],
                ),
                Constants.hSpace(1.6),
                Expanded(
                  child: CustomElevatedButton(
                    text: 'Buy Now',
                    onTap: () {},
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

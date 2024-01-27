// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffe_shop_app/config/constants.dart';
import 'package:flutter/material.dart';

import '../../config/app_colors.dart';

class CustomSingleSelectChipList extends StatelessWidget {
  const CustomSingleSelectChipList({
    Key? key,
    required this.options,
    required this.onSelect,
    required this.selectedOption,
  }) : super(key: key);
  final List<String> options;
  final Function onSelect;
  final String selectedOption;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int index = 0; index < options.length; index++)
            Padding(
              padding: const EdgeInsets.all(Constants.defaultSpacing * .4),
              child: ChoiceChip(
                padding: const EdgeInsets.all(Constants.defaultSpacing * .5),
                backgroundColor: Colors.white,
                selectedColor: AppColors.primaryColor,
                showCheckmark: false,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(Constants.bordersRadius * 2)),
                label: Text(
                  options[index],
                  style: TextStyle(
                      color: selectedOption == options[index]
                          ? AppColors.secondryColor
                          : AppColors.textLightBlue,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
                selected: selectedOption == options[index],
                onSelected: (bool selected) {
                  onSelect(options[index]);
                },
                side: BorderSide.none,
              ),
            ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../config/app_colors.dart';
import '../config/constants.dart';

class CustomSwitchButton extends StatefulWidget {
  const CustomSwitchButton({
    Key? key,
    required this.onSelect,
  }) : super(key: key);

  final Function onSelect;

  @override
  State<CustomSwitchButton> createState() => _CustomSwitchButtonState();
}

class _CustomSwitchButtonState extends State<CustomSwitchButton> {
  int selectedScreenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(
          Constants.bordersRadius * 1.5,
        ),
      ),
      padding: const EdgeInsets.all(
        Constants.defaultSpacing * .2,
      ),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() => selectedScreenIndex = 0);
                widget.onSelect('employer');
              },
              child: Container(
                decoration: BoxDecoration(
                  color: selectedScreenIndex == 0
                      ? AppColors.primaryColor
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(
                    Constants.bordersRadius * 1.5,
                  ),
                ),
                height: 40,
                alignment: Alignment.center,
                child: Text(
                  'Employer',
                  style: TextStyle(
                    color:
                        selectedScreenIndex == 0 ? Colors.white : Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          Constants.hSpace(.5),
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() => selectedScreenIndex = 1);
                widget.onSelect('employ');
              },
              child: Container(
                decoration: BoxDecoration(
                  color: selectedScreenIndex == 1
                      ? AppColors.primaryColor
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(
                    Constants.bordersRadius * 1.5,
                  ),
                ),
                height: 40,
                alignment: Alignment.center,
                child: Text(
                  'Employee',
                  style: TextStyle(
                    color:
                        selectedScreenIndex == 0 ? Colors.grey : Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

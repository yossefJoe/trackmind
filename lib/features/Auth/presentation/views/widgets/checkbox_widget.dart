import 'package:flutter/material.dart';
import 'package:trackmind/core/utils/constants/styles.dart';
import 'package:trackmind/core/utils/resources/color_manager.dart';

class CheckboxWidget extends StatelessWidget {
  const CheckboxWidget(
      {super.key, this.onChanged, required this.value, required this.title});
  final Function(bool?)? onChanged;
  final bool value;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          value: value,
          onChanged: onChanged,
          activeColor: ColorManager.buttonColor,
          checkColor: ColorManager.black,
        ),
        SizedBox(width: 2),
        Text(
          title,
          style: Styles.textStyle14.copyWith(
            color: ColorManager.eclipse,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:trackmind/core/utils/constants/styles.dart';
import 'package:trackmind/core/utils/resources/color_manager.dart';

class AnotherTypeAuthWidget extends StatelessWidget {
  const AnotherTypeAuthWidget(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.buttonTitle});
  final String buttonTitle;
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: Styles.textStyle14.copyWith(
            color: ColorManager.eclipse,
            fontWeight: FontWeight.w600,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            buttonTitle,
            style: Styles.textStyle14.copyWith(
              color: ColorManager.eclipse,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}

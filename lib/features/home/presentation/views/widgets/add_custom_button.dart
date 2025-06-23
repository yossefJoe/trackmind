import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trackmind/core/utils/constants/styles.dart';
import 'package:trackmind/core/utils/resources/color_manager.dart';

class AddCustomButton extends StatelessWidget {
  const AddCustomButton({super.key,required this.onPressed});
final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Row(
        children: [
          Text(
            "Custom",
            style: Styles.textStyle16.copyWith(color: ColorManager.buttonColor),
          ),
          SizedBox(width: 5.w),
          Icon(Icons.arrow_forward_ios,
              color: ColorManager.buttonColor, size: 15.sp),
        ],
      ),
      onPressed: onPressed,
    );
  }
}
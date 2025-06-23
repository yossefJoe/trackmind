import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rive_animated_icon/rive_animated_icon.dart';
import 'package:trackmind/core/utils/resources/assets.dart';
import 'package:trackmind/core/utils/resources/color_manager.dart';

class CustomAddBook extends StatelessWidget {
  const CustomAddBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 25.r,
          backgroundColor: ColorManager.whiteColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              Assets.addBook,
              width: 40.w,
              height: 40.h,
            ),
          ),
        ),
        Positioned(
            top: 0,
            right: 0,
            child: CircleAvatar(
              radius: 10.r,
              backgroundColor: ColorManager.buttonColor,
              child: Icon(
                Icons.add,
                color: ColorManager.whiteColor,
                size: 15.sp,
              ),
            )),
      ],
    );
  }
}

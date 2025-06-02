import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trackmind/core/utils/constants/styles.dart';

class SocialMediaSignInWidget extends StatelessWidget {
  const SocialMediaSignInWidget(
      {super.key, required this.text, required this.imagePath, this.width});
  final String text;
  final String imagePath;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              imagePath,
              height: 50.h,
              width: 50.h,
            ),
          ),
          SizedBox(width: 10),
          Container(
              width: width == null ? 200.w : 80.w,
              child: Text(text, style: Styles.textStyle18)),
        ],
      ),
    );
  }
}

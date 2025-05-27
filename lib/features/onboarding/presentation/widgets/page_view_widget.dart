import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trackmind/core/utils/constants/styles.dart';
import 'package:trackmind/core/utils/resources/assets.dart';
import 'package:trackmind/core/utils/resources/color_manager.dart';

class PageViewWidget extends StatefulWidget {
  const PageViewWidget(
      {super.key, required this.onPageChanged, required this.pageController});
  final Function(int)? onPageChanged;
  final PageController pageController;
  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  List<String> images = [
    Assets.onboarding1,
    Assets.onboarding2,
    Assets.onboarding3,
    Assets.onboarding4,
  ];
  List<String> titles = [
    'Welcome to Track Mind',
    'Create New Habit Easily',
    'Keep Track of Your Progress',
    'Join A Supportive Community',
  ];
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: widget.pageController,
      onPageChanged: widget.onPageChanged,
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              width: 300.w,
              child: Text(
                textAlign: TextAlign.center,
                titles[index],
                style: Styles.textStyle30.copyWith(
                  color: ColorManager.eclipse,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Image.asset(
              images[index],
              fit: BoxFit.cover,
              height: 300.h,
            ),
          ],
        );
      },
    );
  }
}

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trackmind/core/utils/constants/styles.dart';
import 'package:trackmind/core/utils/resources/color_manager.dart';
import 'package:trackmind/core/widgets/main_button.dart';
import 'package:trackmind/features/onboarding/presentation/widgets/page_view_widget.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  PageController pageController = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageViewWidget(
              pageController: pageController,
              onPageChanged: (index) {
                setState(() {
                  currentPage = index; // Ensure index is within bounds
                });
              },
            ),
            Positioned(
              bottom: 120.h,
              left: 50.w,
              right: 50.w,
              child: buildRichText(),
            ),
            Positioned(
              bottom: 40.h,
              left: 0,
              right: 0,
              child: currentPage == 3
                  ? Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: MainButton(
                          color: ColorManager.morning,
                          onTap: () {},
                          title: "Get Started"),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        buildTextButton('Skip', () {
                          pageController.jumpToPage(3);
                        }),
                        DotsIndicator(
                          dotsCount: 4,
                          position: currentPage,
                          decorator: DotsDecorator(
                            color: ColorManager.morning,
                            activeColor: ColorManager.eclipse,
                            spacing:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                          ),
                        ),
                        buildTextButton('Next', () {
                          pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                        }),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextButton(String text, VoidCallback onPressed) {
    return TextButton(
      style: TextButton.styleFrom(
        textStyle: Styles.textStyle18,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: Styles.textStyle18.copyWith(
          color: ColorManager.eclipse,
        ),
      ),
    );
  }

  Widget buildRichText() {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "WE CAN",
            style: Styles.textStyle16.copyWith(
              color: ColorManager.eclipse,
            ),
          ),
          TextSpan(
            text: " HELP YOU",
            style: Styles.textStyle16.copyWith(
              color: ColorManager.morning,
            ),
          ),
          TextSpan(
            text: " TO BE A BETTER VERSION OF",
            style: Styles.textStyle16.copyWith(
              color: ColorManager.eclipse,
            ),
          ),
          TextSpan(
            text: " YOURSELF.",
            style: Styles.textStyle16.copyWith(
              color: ColorManager.morning,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}

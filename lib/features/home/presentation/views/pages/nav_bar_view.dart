import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trackmind/core/utils/resources/app_router.dart';
import 'package:trackmind/core/utils/resources/assets.dart';
import 'package:trackmind/core/utils/resources/color_manager.dart';
import 'package:trackmind/features/home/presentation/views/pages/home_page.dart';
import 'package:trackmind/features/home/presentation/views/pages/new_habit_screen.dart';
import 'package:trackmind/features/quotes/presentation/quotes_page.dart';

class NavigateBarView extends StatefulWidget {
  const NavigateBarView({super.key, this.isInNewHabitPage});
  final bool? isInNewHabitPage;
  @override
  State<NavigateBarView> createState() => _NavigateBarViewState();
}

class _NavigateBarViewState extends State<NavigateBarView> {
  int selectedIndex = 0;

  void _onItemTapped(int index) {
    if (index == 2) {
      // Perform your special action for index 2
      widget.isInNewHabitPage == true
          ? saveNewHabit()
          : _navigateToNewHabitPage(); // Example: Open a modal
    } else {
      setState(() {
        selectedIndex = index;
      });
    }
  }

  void _navigateToNewHabitPage() {
    context.go(AppRouter.navBarView, extra: true);
  }

  double iconSize = 50;
  @override
  void initState() {
    super.initState();
  }

  void saveNewHabit() {
    // Implement your save logic here
    // For example, you might want to save the new habit to a database or state management solution
    print("New habit saved!");
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [
      widget.isInNewHabitPage == true
          ? const NewHabitScreen()
          : const HomePage(),
      QuotesPage(),
      HomePage(),
      HomePage(),
      HomePage(),
    ];
    List<Widget> icons = [
      navbarItem(0, Assets.nav1),
      navbarItem(1, Assets.nav2),
      navbarItem(
          2, widget.isInNewHabitPage == true ? Assets.check : Assets.floating),
      navbarItem(3, Assets.nav3),
      navbarItem(4, Assets.nav4),
    ];
    return Scaffold(
      body: Stack(
        children: [
          list.elementAt(selectedIndex),
          Align(
            alignment: Alignment.bottomCenter,
            child: CircleNavBar(
              shadowColor: ColorManager.black,
              circleColor: ColorManager.buttonColor,
              color: ColorManager.whiteColor,
              cornerRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              activeIndex: 2,
              activeIcons: icons,
              inactiveIcons: icons,
            ),
          ),
        ],
      ),
    );
  }

  Widget navbarItem(int index, String image) {
    return GestureDetector(
      onTap: () {
        _onItemTapped(index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: iconSize,
            height: iconSize,
          ),
          Visibility(
              visible: index == selectedIndex && index != 2,
              child: Container(
                  width: 30,
                  height: 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: ColorManager.eclipse,
                  ))),
        ],
      ),
    );
  }
}

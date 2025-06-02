import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:trackmind/core/utils/resources/assets.dart';
import 'package:trackmind/core/utils/resources/color_manager.dart';
import 'package:trackmind/features/home/presentation/views/pages/home_page.dart';

class NavigateBarView extends StatefulWidget {
  const NavigateBarView({super.key});

  @override
  State<NavigateBarView> createState() => _NavigateBarViewState();
}

class _NavigateBarViewState extends State<NavigateBarView> {
  int selectedIndex = 0;

  List<Widget> list = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  void _onItemTapped(int index) {
    if (index == 2) {
      // Perform your special action for index 2
      _showModal(); // Example: Open a modal
    } else {
      setState(() {
        selectedIndex = index;
      });
    }
  }

  void _showModal() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(16),
          height: 200,
          child: Center(
            child: Text("Special Action Triggered!",
                style: TextStyle(fontSize: 18)),
          ),
        );
      },
    );
  }

  double iconSize = 50;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> icons = [
      navbarItem(0, Assets.nav1),
      navbarItem(1, Assets.nav2),
      navbarItem(2, Assets.floating),
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

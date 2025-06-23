import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:trackmind/core/utils/constants/styles.dart';
import 'package:trackmind/core/utils/resources/assets.dart';
import 'package:trackmind/core/utils/resources/color_manager.dart';
import 'package:trackmind/core/widgets/custom_back_button.dart';

class CustomAppbar extends AppBar {
  CustomAppbar(String title, BuildContext context, List<Widget>? actions,
      bool needsDrawer, GlobalKey<ScaffoldState>? scaffoldKey, VoidCallback onPressed)
      : super(
          elevation: 0,
          leadingWidth: 100.w,
          title: Text(
            title,
            style: Styles.textStyle16,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: needsDrawer == true
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorManager.lightEclipse,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.menu, color: ColorManager.eclipse),
                      onPressed: () => scaffoldKey?.currentState?.openDrawer(),
                    ),
                  ),
                )
              :  CustomBackButton(onPressed: onPressed),
          actions: actions,
        );
}

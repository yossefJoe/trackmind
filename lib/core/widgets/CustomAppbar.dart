import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:trackmind/core/utils/constants/styles.dart';
import 'package:trackmind/core/utils/resources/color_manager.dart';

class CustomAppbar extends AppBar {
  CustomAppbar(
    String title,
    BuildContext context,
    List<Widget>? actions,
    bool wantLeading,
  ) : super(
            leading: wantLeading == false
                ? null
                : IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new)),
            title: Text(
              title,
              style: Styles.textStyle18,
            ),
            centerTitle: true,
            backgroundColor: ColorManager.whiteColor,
            actions: actions);
}

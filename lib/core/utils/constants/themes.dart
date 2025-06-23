import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trackmind/core/utils/resources/color_manager.dart';

class ProjectThemes {
  static ThemeData lightTheme = ThemeData(
    primaryTextTheme: TextTheme(
      headlineLarge: const TextStyle(
        color: ColorManager.eclipse,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: const TextStyle(
        color: ColorManager.eclipse,
        fontSize: 16,
      ),
      bodyMedium: const TextStyle(
        color: ColorManager.eclipse,
        fontSize: 14,
      ),
      labelLarge: const TextStyle(
        color: ColorManager.eclipse,
        fontSize: 14,
      ),
    ),
    listTileTheme: const ListTileThemeData(
        tileColor: ColorManager.whiteColor,
        selectedTileColor: ColorManager.black,
        iconColor: ColorManager.grey,
        selectedColor: ColorManager.black),
    primaryColorLight: ColorManager.black,
    dropdownMenuTheme: DropdownMenuThemeData(
      textStyle: const TextStyle(
        color: ColorManager.eclipse,
      ),
      menuStyle: MenuStyle(
        backgroundColor:
            WidgetStateProperty.all<Color?>(ColorManager.greylight),
      ),
    ),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        color: ColorManager.eclipse,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      backgroundColor: ColorManager.whiteColor,
      iconTheme: IconThemeData(color: ColorManager.black),
      actionsIconTheme: IconThemeData(color: ColorManager.black),
    ),
    useMaterial3: true,
    iconTheme: const IconThemeData(color: ColorManager.black),
    primaryColor: ColorManager.black,
    canvasColor: ColorManager.whiteColor,
    scaffoldBackgroundColor: ColorManager.lightScafold,
    primarySwatch: Colors.yellow,
    brightness: Brightness.light,
  );

  static ThemeData darkTheme = ThemeData(
    listTileTheme: const ListTileThemeData(
        tileColor: ColorManager.darkTile,
        selectedTileColor: ColorManager.black,
        iconColor: ColorManager.whiteColor,
        selectedColor: ColorManager.black),
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorManager.darkScafold,
      iconTheme: IconThemeData(color: ColorManager.whiteColor),
      actionsIconTheme: IconThemeData(color: ColorManager.whiteColor),
    ),
    dropdownMenuTheme: const DropdownMenuThemeData(
      textStyle: TextStyle(
        color: ColorManager.whiteColor,
      ),
      menuStyle: MenuStyle(),
    ),
    useMaterial3: true,
    iconTheme: const IconThemeData(color: ColorManager.whiteColor),
    primaryColor: ColorManager.whiteColor,
    canvasColor: ColorManager.darkScafold,
    scaffoldBackgroundColor: ColorManager.darkScafold,
    primarySwatch: Colors.blue,
    brightness: Brightness.dark,
  );
}

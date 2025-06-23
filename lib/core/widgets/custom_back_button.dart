import 'package:flutter/material.dart';
import 'package:trackmind/core/utils/resources/color_manager.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key,required this.onPressed });
final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorManager.lightEclipse,
              ),
              child: IconButton(
                icon:const Icon(Icons.arrow_back, color: ColorManager.eclipse),
                onPressed: onPressed,
              ),
            ),
          );
  }
}
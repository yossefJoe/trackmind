import 'package:flutter/material.dart';
import 'package:trackmind/core/utils/resources/color_manager.dart';

class StopAllRemindersButton extends StatelessWidget {
  const StopAllRemindersButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          border: Border.all(
              color: ColorManager.eclipse.withOpacity(0.3), width: 1.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Icon(
            Icons.notifications_off,
            color: ColorManager.eclipse.withOpacity(0.3),
            size: 30.0,
          ),
        ),
      ),
    );
  }
}

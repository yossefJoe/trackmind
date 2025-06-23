import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trackmind/core/utils/constants/styles.dart';
import 'package:trackmind/core/utils/resources/color_manager.dart';

class ReminderItem extends StatelessWidget {
  const ReminderItem(
      {super.key, required this.isOn, required this.time, this.onChanged});
  final bool isOn;
  final String time;
  final void Function(bool)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isOn
            ? ColorManager.buttonColor.withOpacity(0.2)
            : ColorManager.eclipse.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(
        children: [
          Text(time,
              style: Styles.textStyle18.copyWith(
                color: isOn ? ColorManager.buttonColor : ColorManager.eclipse,
              )),
          Stack(
            children: [
              Switch(
                activeColor:
                    isOn ? ColorManager.buttonColor : ColorManager.eclipse,
                thumbColor: MaterialStateProperty.all<Color>(
                    isOn ? ColorManager.buttonColor : ColorManager.eclipse),
                value: isOn,
                onChanged: onChanged,
              ),
              Positioned(
                  right: isOn ? 30.w : 10.w,
                  bottom: 15.h,
                  child: Text(isOn ? 'On' : 'Off',
                      style: Styles.textStyle12.copyWith(
                        fontWeight: FontWeight.bold,
                        color: isOn
                            ? ColorManager.buttonColor
                            : ColorManager.eclipse,
                      ))),
            ],
          ),
        ],
      ),
    );
  }
}

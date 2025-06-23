import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trackmind/core/widgets/main_button.dart';
import 'package:trackmind/features/home/presentation/views/widgets/reminders_grid_view.dart';
import 'package:trackmind/features/home/presentation/views/widgets/stop_all_reminders_button.dart';

class RemindersViewWidget extends StatelessWidget {
  const RemindersViewWidget(
      {super.key, required this.alarms, required this.onTap});
  final List<Map<String, dynamic>> alarms;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      SizedBox(
        height: 250.h,
        child: RemindersGridView(
          alarms: alarms,
        ),
      ),
      SizedBox(
        height: 10.h,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              width: 250.w,
              child: MainButton(onTap: onTap, title: "Add Reminder")),
          const StopAllRemindersButton(),
        ],
      ),
    ]);
  }
}

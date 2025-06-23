import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trackmind/features/home/presentation/views/widgets/reminder_item.dart';

class RemindersGridView extends StatelessWidget {
  const RemindersGridView({
    super.key,
    required this.alarms,
  });
  final List<Map<String, dynamic>> alarms;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: alarms.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisExtent: 75.h,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
      itemBuilder: (context, index) {
        return ReminderItem(
            isOn: alarms[index]['isOn'], time: alarms[index]['time']);
      },
    );
  }
}

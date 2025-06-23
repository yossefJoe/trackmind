
  import 'package:flutter/material.dart';
import 'package:trackmind/features/home/presentation/views/widgets/adding_new_reminder_widget.dart';
import 'package:trackmind/features/home/presentation/views/widgets/reminders_view_widget.dart';

void showTimePickerDialog(BuildContext context, List<Map<String, dynamic>> alarms) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16),
          child:  AddingNewReminderWidget(alarms: alarms,)
               
        );
      },
    );
  }

  void showRemindersView(BuildContext context, List<Map<String, dynamic>> alarms) {
   showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16),
          child:  RemindersViewWidget(
                  alarms: alarms,
                  onTap: () {
                   Navigator.pop(context);
                    showTimePickerDialog(context,alarms);
                  },
                ),
               
        );
      },
    );


  }
import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:trackmind/core/utils/constants/styles.dart';
import 'package:trackmind/core/utils/resources/color_manager.dart';
import 'package:trackmind/features/home/presentation/views/widgets/dialoge_methods.dart';

class AddingNewReminderWidget extends StatefulWidget {
  const AddingNewReminderWidget({super.key, required this.alarms});
  final List<Map<String, dynamic>> alarms;
  @override
  State<AddingNewReminderWidget> createState() =>
      _AddingNewReminderWidgetState();
}

class _AddingNewReminderWidgetState extends State<AddingNewReminderWidget> {
  DateTime _selectedTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            textButton(text: "Cancel"),
            Text("Add Reminders",
                style: Styles.textStyle18.copyWith(
                  color: ColorManager.eclipse,
                )),
            textButton(text: "Save"),
          ],
        ),
        TimePickerSpinner(
          is24HourMode: false,
          normalTextStyle: Styles.textStyle18.copyWith(
            color: ColorManager.eclipse.withOpacity(0.5),
          ),
          highlightedTextStyle: Styles.textStyle30.copyWith(
            color: ColorManager.eclipse,
          ),
          spacing: 50,
          itemHeight: 60,
          isForce2Digits: true,
          time: _selectedTime,
          onTimeChange: (time) {
            print("Time Selected: $time");
            setState(() {
              _selectedTime = time;
            });
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [],
        ),
      ],
    );
  }

  Widget textButton({required String text}) {
    return TextButton(
      onPressed: () {
        Navigator.pop(context);
        showRemindersView(context, widget.alarms);
      },
      child: Text(text,
          style: Styles.textStyle16.copyWith(color: ColorManager.buttonColor)),
    );
  }
}

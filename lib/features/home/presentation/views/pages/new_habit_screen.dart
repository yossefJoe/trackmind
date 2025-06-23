import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:go_router/go_router.dart';
import 'package:trackmind/core/utils/constants/styles.dart';
import 'package:trackmind/core/utils/resources/app_router.dart';
import 'package:trackmind/core/utils/resources/color_manager.dart';
import 'package:trackmind/core/widgets/CustomAppbar.dart';
import 'package:trackmind/core/widgets/custom_text_field.dart';
import 'package:trackmind/features/home/presentation/views/pages/habit_frequency_widget.dart';
import 'package:trackmind/features/home/presentation/views/widgets/add_custom_button.dart';
import 'package:trackmind/features/home/presentation/views/widgets/adding_new_reminder_widget.dart';
import 'package:trackmind/features/home/presentation/views/widgets/custom_add_book.dart';
import 'package:trackmind/features/home/presentation/views/widgets/dialoge_methods.dart';
import 'package:trackmind/features/home/presentation/views/widgets/reminder_item.dart';
import 'package:trackmind/features/home/presentation/views/widgets/reminders_grid_view.dart';
import 'package:trackmind/features/home/presentation/views/widgets/reminders_view_widget.dart';

class NewHabitScreen extends StatefulWidget {
  const NewHabitScreen({super.key});

  @override
  State<NewHabitScreen> createState() => _NewHabitScreenState();
}

class _NewHabitScreenState extends State<NewHabitScreen> {
  final TextEditingController habitNameController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    habitNameController.dispose();
    super.dispose();
  }

  bool isAddningNewReminder = false;
  List<Map<String, dynamic>> alarms = [
    {"time": "06:00 AM", "isOn": true},
    {"time": "06:30 AM", "isOn": false},
    {"time": "07:00 AM", "isOn": true},
    {"time": "08:00 AM", "isOn": false},
    {"time": "09:00 AM", "isOn": true},
    {"time": "10:00 AM", "isOn": false},
    {"time": "11:00 AM", "isOn": true},
    {"time": "11:30 AM", "isOn": false},
    {"time": "12:00 PM", "isOn": true},
    {"time": "01:00 PM", "isOn": true},
    {"time": "02:00 PM", "isOn": false},
    {"time": "03:00 PM", "isOn": true},
    {"time": "04:00 PM", "isOn": false},
    {"time": "05:00 PM", "isOn": true},
    {"time": "06:00 PM", "isOn": true},
    {"time": "07:00 PM", "isOn": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar("New Habit", context, [], false, null, () {
        context.go(AppRouter.navBarView, extra: false);
      }),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 270.w,
                  child: CustomTextField(
                    hint: "Enter Habit Name",
                    controller: habitNameController,
                    inputType: TextInputType.text,
                    fillColor: Colors.white,
                  ),
                ),
                const CustomAddBook(),
              ],
            ),
            const HabitFrequencyWidget(),
            SizedBox(height: 20.h),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                color: ColorManager.whiteColor,
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Reminder",
                        style: Styles.textStyle16
                            .copyWith(color: ColorManager.eclipse)),
                    const Spacer(),
                    AddCustomButton(onPressed: () {
                      showTimePickerDialog(context, alarms);
                    })
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

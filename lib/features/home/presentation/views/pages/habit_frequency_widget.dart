import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trackmind/core/utils/constants/styles.dart';
import 'package:trackmind/core/utils/resources/color_manager.dart';
import 'package:trackmind/features/home/presentation/views/widgets/add_custom_button.dart';
import 'package:trackmind/features/home/presentation/views/widgets/habit_box.dart';

class HabitFrequencyWidget extends StatelessWidget {
  const HabitFrequencyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> weekDaysFrequency = {
      "MON": "done",
      "TUE": "done",
      "WED": "half",
      "THU": "done",
      "FRI": "half",
      "SAT": "half",
      "SUN": "done",
    };

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        color: Colors.white,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Habit Frequency",
                  style: Styles.textStyle16.copyWith(
                    color: ColorManager.eclipse,
                  ),
                ),
                const Spacer(),
                 AddCustomButton(
                  onPressed: () {
                    // Handle custom button action
                  },
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: weekDaysFrequency.entries.map((entry) {
                  final day = entry.key;
                  final frequency = entry.value;
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 2),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(day, style: Styles.textStyle14),
                        SizedBox(height: 10),
                        habitBox(
                          triangleColor: ColorManager.buttonColor,
                          size: 45,
                          backgroundColor: frequency == 'done'
                              ? ColorManager.buttonColor
                              : Colors.transparent,
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

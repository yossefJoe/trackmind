import 'package:flutter/material.dart';
import 'package:trackmind/features/home/presentation/views/widgets/habit_box.dart';

final Map<String, dynamic> habitData = {
  "dates": ["SUN 17", "MON 18", "TUE 19", "WED 20"],
  "habits": [
    {
      "title": "Read A Book",
      "progress": ["done", "done", "half", "done"],
      "color": Colors.orange,
    },
    {
      "title": "Exercise",
      "progress": ["done", "done", "done", "half"],
      "color": Colors.red,
    },
    {
      "title": "Wake Up Early",
      "progress": ["done", "half", "done", "done"],
      "color": Colors.blue,
    },
    {
      "title": "Walk Dog",
      "progress": ["half", "done", "done", "half"],
      "color": Colors.purple,
    },
  ]
};

class HabitTable extends StatelessWidget {
  const HabitTable({super.key});

  Widget buildProgressBox(String status, Color color) {
    double opacity = status == 'done' ? 1.0 : 0.4;
    return habitBox(
        size: 45,
        backgroundColor: status == 'done' ? color : Colors.transparent,
        triangleColor: color);
  }

  @override
  Widget build(BuildContext context) {
    final dates = habitData['dates'] as List<String>;
    final habits = habitData['habits'] as List<dynamic>;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Dates Row (Header)
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: dates
                .map((d) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 9),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(d.split(' ')[0] + '\n' + d.split(' ')[1],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12)),
                        ),
                      ),
                    ))
                .toList(),
          ),
          const SizedBox(height: 16),
          // Habit Rows
          ...habits.map((habit) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                children: [
                  // Habit Title
                  SizedBox(
                    width: 70,
                    child: Text(
                      habit['title'],
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 10),
                    ),
                  ),
                  // Status Boxes
                  ...List.generate(
                    dates.length,
                    (i) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 9.0),
                      child: buildProgressBox(
                          habit['progress'][i], habit['color']),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}

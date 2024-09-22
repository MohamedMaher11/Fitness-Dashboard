// قائمة بيانات المهام التجريبية
import 'package:dashboard/model/schedule_model.dart';
import 'package:flutter/material.dart';

class ScheduleTasksData {
  final List<ScheduledTask> scheduled = [
    ScheduledTask(
      title: "Morning Run",
      date: "Sept 22, 2024",
      progress: 0.8,
      icon: Icons.directions_run,
      color: Colors.blue,
    ),
    ScheduledTask(
      title: "Yoga Session",
      date: "Sept 22, 2024",
      progress: 0.6,
      icon: Icons.self_improvement,
      color: Colors.orange,
    ),
    ScheduledTask(
      title: "Gym Workout",
      date: "Sept 22, 2024",
      progress: 0.9,
      icon: Icons.fitness_center,
      color: Colors.red,
    ),
    ScheduledTask(
      title: "Swimming",
      date: "Sept 22, 2024",
      progress: 0.5,
      icon: Icons.pool,
      color: Colors.teal,
    ),
  ];
}

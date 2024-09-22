// نموذج لبيانات المهام المجدولة
import 'package:flutter/material.dart';

class ScheduledTask {
  final String title;
  final String date;
  final double progress;
  final IconData icon;
  final Color color;

  ScheduledTask(
      {required this.title,
      required this.date,
      required this.progress,
      required this.icon,
      required this.color});
}

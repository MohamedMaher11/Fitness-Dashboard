import 'package:flutter/material.dart';

class HealthData {
  final String title;
  final String value;
  final double progress;
  final Color color;
  final IconData icon;

  HealthData({
    required this.title,
    required this.value,
    required this.progress,
    required this.color,
    required this.icon,
  });
}

final List<HealthData> healthData = [
  HealthData(
      title: "Steps",
      value: "7,500",
      progress: 0.75,
      color: Colors.blue,
      icon: Icons.directions_walk),
  HealthData(
      title: "Calories",
      value: "1,200",
      progress: 0.60,
      color: Colors.orange,
      icon: Icons.local_fire_department),
  HealthData(
      title: "Heart Rate",
      value: "80 BPM",
      progress: 0.80,
      color: Colors.red,
      icon: Icons.favorite),
  HealthData(
      title: "Sleep",
      value: "6h 30m",
      progress: 0.65,
      color: Colors.purple,
      icon: Icons.bedtime),
];

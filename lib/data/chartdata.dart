// chart_data.dart
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartData {
  // هذه الأساليب لم تعد static
  List<PieChartSectionData> getWorkoutStatusChartSections() {
    return [
      PieChartSectionData(
        color: Colors.greenAccent,
        value: 50,
        title: '50%',
        radius: 45,
        titleStyle: TextStyle(color: Colors.white, fontSize: 12),
      ),
      PieChartSectionData(
        color: Colors.orange,
        value: 30,
        title: '30%',
        radius: 45,
        titleStyle: TextStyle(color: Colors.white, fontSize: 12),
      ),
      PieChartSectionData(
        color: Colors.red,
        value: 20,
        title: '20%',
        radius: 45,
        titleStyle: TextStyle(color: Colors.white, fontSize: 12),
      ),
    ];
  }

  List<PieChartSectionData> getTopActivitiesChartSections() {
    return [
      PieChartSectionData(
        color: Colors.blue,
        value: 25,
        title: '1',
        radius: 45,
        titleStyle: TextStyle(color: Colors.white, fontSize: 12),
      ),
      PieChartSectionData(
        color: Colors.green,
        value: 20,
        title: '2',
        radius: 45,
        titleStyle: TextStyle(color: Colors.white, fontSize: 12),
      ),
      PieChartSectionData(
        color: Colors.purple,
        value: 20,
        title: '3',
        radius: 45,
        titleStyle: TextStyle(color: Colors.white, fontSize: 12),
      ),
      PieChartSectionData(
        color: Colors.yellow,
        value: 20,
        title: '4',
        radius: 45,
        titleStyle: TextStyle(color: Colors.white, fontSize: 12),
      ),
      PieChartSectionData(
        color: Colors.red,
        value: 15,
        title: '5',
        radius: 45,
        titleStyle: TextStyle(color: Colors.white, fontSize: 12),
      ),
    ];
  }

  Widget buildLegendItem(Color color, String text) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
        SizedBox(width: 8),
        Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ],
    );
  }
}

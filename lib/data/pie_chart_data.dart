import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartData {
  final paiChartSelectionDatas = [
    PieChartSectionData(
      color: const Color(0xFF4CAF50), // لون أخضر هادئ
      value: 35, // قيمة أكبر لتناسب
      showTitle: false,
      radius: 28, // قريب من السابق
    ),
    PieChartSectionData(
      color: const Color(0xFF2196F3), // لون أزرق متوازن
      value: 25, // قيمة متوسطة
      showTitle: false,
      radius: 28, // قريب من السابق
    ),
    PieChartSectionData(
      color: const Color(0xFFFFC107), // لون أصفر هادئ
      value: 20, // قيمة متوسطة
      showTitle: false,
      radius: 28, // قريب من السابق
    ),
    PieChartSectionData(
      color: const Color(0xFFF44336), // لون أحمر معتدل
      value: 10, // قيمة أقل
      showTitle: false,
      radius: 28, // قريب من السابق
    ),
    PieChartSectionData(
      color: const Color(0xFF9C27B0).withOpacity(0.6), // لون بنفسجي شفاف قليلاً
      value: 10, // قيمة أصغر
      showTitle: false,
      radius: 28, // قريب من السابق
    ),
  ];
}

// bar_graph_card.dart
import 'package:dashboard/data/chartdata.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarGraphCard extends StatelessWidget {
  const BarGraphCard({super.key});

  @override
  Widget build(BuildContext context) {
    // استخدم MediaQuery للحصول على عرض الشاشة
    double screenWidth = MediaQuery.of(context).size.width;
    final chartData = ChartData(); // إنشاء كائن من ChartData

    return GridView.builder(
      itemCount: 2, // عدد الرسوم البيانية
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        // استخدام عدد الأعمدة بناءً على حجم الشاشة
        crossAxisCount:
            screenWidth < 600 ? 1 : 2, // 1 للهواتف الصغيرة و 2 للشاشات الأكبر
        crossAxisSpacing: 15,
        mainAxisSpacing: 12.0,
        // تعديل النسبة بين العرض والارتفاع بناءً على حجم الشاشة
        childAspectRatio: screenWidth < 600 ? 4 / 3 : 5 / 4,
      ),
      itemBuilder: (context, index) {
        if (index == 0) {
          return _buildWorkoutStatusChart(chartData); // تمرير كائن ChartData
        } else {
          return _buildTopActivitiesChart(chartData); // تمرير كائن ChartData
        }
      },
    );
  }

  Widget _buildWorkoutStatusChart(ChartData chartData) {
    return CustomCard(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Workout Status',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: PieChart(
              PieChartData(
                sections: chartData
                    .getWorkoutStatusChartSections(), // استدعاء البيانات من ملف البيانات
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              chartData.buildLegendItem(Colors.greenAccent, 'Completed'),
              chartData.buildLegendItem(Colors.orange, 'Active'),
              chartData.buildLegendItem(Colors.red, 'Not Started'),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildTopActivitiesChart(ChartData chartData) {
    return CustomCard(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Top 5 Activities',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: PieChart(
              PieChartData(
                sections: chartData
                    .getTopActivitiesChartSections(), // استدعاء البيانات من ملف البيانات
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              chartData.buildLegendItem(Colors.blue, 'Running'),
              chartData.buildLegendItem(Colors.green, 'Cycling'),
              chartData.buildLegendItem(Colors.purple, 'Swimming'),
              chartData.buildLegendItem(Colors.yellow, 'Yoga'),
              chartData.buildLegendItem(Colors.red, 'Strength Training'),
            ],
          )
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;

  const CustomCard({required this.child, required this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF2A2D3E),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: padding,
      child: child,
    );
  }
}

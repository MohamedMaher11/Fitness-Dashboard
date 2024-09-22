import 'package:dashboard/data/schadulel.dart';
import 'package:dashboard/model/schedule_model.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart'; // مكتبة لشريط التقدم

class Scheduled extends StatelessWidget {
  const Scheduled({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ScheduleTasksData(); // بيانات المهام المجدولة

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Scheduled Tasks", // تغيير العنوان ليكون أكثر وصفًا
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        const SizedBox(height: 15),
        ListView.builder(
          shrinkWrap: true,
          itemCount: data.scheduled.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final task = data.scheduled[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: _buildTaskCard(task),
            );
          },
        ),
      ],
    );
  }

  Widget _buildTaskCard(ScheduledTask task) {
    return Card(
      color: const Color(0xFF2A2D3E), // تغيير لون الخلفية
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(task.icon, size: 28, color: task.color), // إضافة أيقونة
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        task.title,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        task.date,
                        style:
                            const TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.more_vert, color: Colors.white), // زر إعدادات
              ],
            ),
            const SizedBox(height: 10),
            // شريط تقدم لإنجاز المهمة
            LinearPercentIndicator(
              lineHeight: 8.0,
              percent: task.progress,
              backgroundColor: Colors.grey.withOpacity(0.2),
              progressColor: task.color,
              barRadius: const Radius.circular(5),
            ),
          ],
        ),
      ),
    );
  }
}

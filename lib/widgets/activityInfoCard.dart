import 'package:dashboard/data/health.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart'; // استخدمنا مكتبة لشريط التقدم الدائري

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: healthData.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: MediaQuery.of(context).size.width < 600 ? 2 : 4,
        crossAxisSpacing: 10, // تقليل المسافات
        mainAxisSpacing: 10, // تقليل المسافات
        childAspectRatio: 3 / 4, // نسبة العرض إلى الارتفاع لجعلها أصغر قليلاً
      ),
      itemBuilder: (context, index) {
        return _buildActivityCard(healthData[index]);
      },
    );
  }

  Widget _buildActivityCard(HealthData data) {
    return Card(
      color: const Color(0xFF2A2D3E),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 3, // تقليل الظل لجعل التصميم أبسط
      child: Padding(
        padding: const EdgeInsets.all(8.0), // تقليل الحشوة الداخلية
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularPercentIndicator(
              radius: 40.0, // تقليل الحجم من 50 إلى 40
              lineWidth: 6.0, // تقليل عرض الخط من 8 إلى 6
              percent: data.progress,
              center: Icon(
                data.icon,
                size: 24, // تصغير حجم الأيقونة
                color: data.color,
              ),
              progressColor: data.color,
              backgroundColor: data.color.withOpacity(0.2),
              circularStrokeCap: CircularStrokeCap.round,
            ),
            const SizedBox(height: 8), // تقليل الفراغ بين العناصر
            Flexible(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  data.value,
                  style: const TextStyle(
                    fontSize: 18, // تقليل حجم النص
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 4), // تقليل المسافة بين النصوص
            Flexible(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  data.title,
                  style: const TextStyle(
                    fontSize: 12, // تقليل حجم العنوان
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:dashboard/data/Menu_Data.dart';
import 'package:flutter/material.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  int selectedIndex = 0; // العنصر المحدد يبقى باللون حتى بعد التفاعل معه

  @override
  Widget build(BuildContext context) {
    final data = SideMenuData(); // استدعاء البيانات الخاصة بالقائمة الجانبية

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 15),
      color: const Color(0xFF181A20), // خلفية داكنة مع تصميم عصري
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // إضافة صورة المستخدم في الـ Header
          buildHeader(),
          const SizedBox(height: 20), // مسافة بين الصورة والقائمة

          // قائمة الـ Menu
          Expanded(
            child: ListView.builder(
              itemCount: data.menu.length,
              itemBuilder: (context, index) => buildMenuEntry(data, index),
            ),
          ),
        ],
      ),
    );
  }

  // تصميم الـ Header مع صورة المستخدم
  Widget buildHeader() {
    return Row(
      children: [
        // صورة المستخدم
        ClipOval(
          child: Image.asset(
            'assets/images/mohamed.png', // المسار الخاص بالصورة
            width: 50, // حجم الصورة
            height: 50, // ارتفاع الصورة
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 15), // مسافة بين الصورة والنص

        // اسم المستخدم أو العنوان
        const Text(
          "Mohamed",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  // بناء قائمة الـ Menu
  Widget buildMenuEntry(SideMenuData data, int index) {
    final isSelected =
        selectedIndex == index; // التحقق إذا كان العنصر محدد أم لا

    return InkWell(
      onTap: () => setState(() {
        selectedIndex = index; // تحديد العنصر وتغيير اللون
      }),
      borderRadius: BorderRadius.circular(8),
      child: AnimatedContainer(
        duration:
            const Duration(milliseconds: 300), // تأثير الأنيميشن عند التغيير
        curve: Curves.easeInOut,
        margin: const EdgeInsets.symmetric(vertical: 8), // المسافة بين العناصر
        padding: const EdgeInsets.symmetric(
            horizontal: 15, vertical: 12), // البادينغ الداخلي لكل عنصر
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), // زوايا دائرية للعناصر
          color: isSelected
              ? Colors.blueAccent.withOpacity(0.2)
              : Colors.transparent, // اللون في حالة التحديد
        ),
        child: Row(
          children: [
            Icon(
              data.menu[index].icon, // أيقونات جديدة ومحدثة لكل عنصر
              size: 20, // تصغير حجم الأيقونات قليلاً
              color: isSelected
                  ? Colors.blueAccent
                  : Colors.grey[400], // تغيير اللون بناءً على التحديد
            ),
            const SizedBox(width: 15), // مسافة بين الأيقونة والنص
            Text(
              data.menu[index].title, // النص الخاص بكل عنصر
              style: TextStyle(
                fontSize: 14, // حجم النص متناسق
                color: isSelected
                    ? Colors.blueAccent
                    : Colors.grey[400], // تغيير اللون بناءً على التحديد
                fontWeight: isSelected
                    ? FontWeight.bold
                    : FontWeight.normal, // خط أسمك عند التحديد
              ),
            ),
          ],
        ),
      ),
    );
  }
}

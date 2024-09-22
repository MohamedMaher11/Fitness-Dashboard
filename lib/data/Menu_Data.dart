// مثال لبيانات القائمة
import 'package:dashboard/model/menu_model.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  final List<MenuItem> menu = [
    MenuItem(icon: Icons.home, title: 'Home'),
    MenuItem(icon: Icons.dashboard, title: 'Dashboard'),
    MenuItem(icon: Icons.bar_chart, title: 'Reports'),
    MenuItem(icon: Icons.settings, title: 'Settings'),
    MenuItem(icon: Icons.help_outline, title: 'Help'),
  ];
}

// كلاس لتمثيل بيانات العنصر

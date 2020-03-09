import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'donut_large': Icons.donut_large,
  'bubble_chart': Icons.bubble_chart,

};

Icon getIcon(String nombreIcono) {
  return Icon(_icons[nombreIcono], color: Colors.black);
}

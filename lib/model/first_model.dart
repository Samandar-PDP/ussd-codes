import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstModel {
  final int id;
  final IconData iconData;
  final String title;
  
  FirstModel({required this.id, required this.title, required this.iconData});
}
final firstModels = [
  FirstModel(id: 0, title: 'Tariflar', iconData: Icons.shopping_bag),
  FirstModel(id: 1, title: 'Daqiqalar', iconData: Icons.timer),
  FirstModel(id: 2, title: 'Internet', iconData: Icons.mobile_screen_share),
  FirstModel(id: 3, title: 'Xizmatlar', iconData: Icons.settings),
  FirstModel(id: 4, title: 'SMS', iconData: Icons.sms_failed_outlined),
  FirstModel(id: 5, title: 'Yangiliklar', iconData: Icons.newspaper),
];

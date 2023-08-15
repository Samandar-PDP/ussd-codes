import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ussd_codes/screen/operators_screen.dart';

void main() {
  runApp(UssdApp());
}
class UssdApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OperatorsScreen(),
    );
  }
}
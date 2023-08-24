import 'package:flutter/material.dart';
import 'package:ussd_codes/model/first_model.dart';
import 'package:ussd_codes/model/second_model.dart';
import 'package:ussd_codes/widget/second_item.dart';

class SecondScreen extends StatelessWidget {
  final FirstModel firstModel;

  SecondScreen({Key? key, required this.firstModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: secondList.length,
      itemBuilder: (context, index)  {
        return SecondItem(second: secondList[firstModel.id][index], onClick: (second) {});
      },
    );
  }
}
import 'package:flutter/material.dart';
import 'package:ussd_codes/model/operator.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key, required this.operator});
  final Operator operator;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(operator.name)),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(operator.image,height: 200,width: double.infinity),
          ],
        ),
      ),
    );
  }
}

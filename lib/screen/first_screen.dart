import 'package:flutter/material.dart';
import 'package:ussd_codes/model/operator.dart';

class FirstScreen extends StatelessWidget {
  final Operator operator;

  const FirstScreen({Key? key, required this.operator}) : super(key: key);

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

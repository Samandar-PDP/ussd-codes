import 'package:flutter/material.dart';
import 'package:ussd_codes/model/first_model.dart';
import 'package:ussd_codes/model/operator.dart';
import 'package:ussd_codes/screen/second_screen.dart';
import 'package:ussd_codes/widget/first_item.dart';

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
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 2 / 2
                ),
                itemCount: firstModels.length,
                itemBuilder: (context, index) {
                  return FirstItem(firstModel: firstModels[index], onClick: (model) {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SecondScreen(firstModel: model))
                    );
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

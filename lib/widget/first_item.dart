import 'package:flutter/material.dart';
import 'package:ussd_codes/model/first_model.dart';

class FirstItem extends StatelessWidget {
  final FirstModel firstModel;

  const FirstItem({Key? key, required this.firstModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.white,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(firstModel.iconData,size: 60),
                Text(firstModel.title)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

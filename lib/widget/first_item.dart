import 'package:flutter/material.dart';
import 'package:ussd_codes/model/first_model.dart';

class FirstItem extends StatelessWidget {
  const FirstItem({super.key, required this.firstModel});
  final FirstModel firstModel;

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

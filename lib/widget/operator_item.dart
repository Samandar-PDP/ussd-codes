import 'package:flutter/material.dart';
import 'package:ussd_codes/model/operator.dart';

class OperatorItem extends StatelessWidget {

  final Operator operator;
  final void Function(Operator operator) onClick;

  const OperatorItem({Key? key, required this.operator, required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        surfaceTintColor: Colors.white,
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: () {
            onClick(operator);
          },
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(foregroundImage: NetworkImage(operator.image),radius: 40),
                  Text(operator.name,style: const TextStyle(fontSize: 20)),
                ],
              ),
            ),
          ),
        ),
    );
  }
}

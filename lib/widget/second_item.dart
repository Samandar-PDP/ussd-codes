import 'package:flutter/material.dart';
import 'package:ussd_codes/model/second_model.dart';

class SecondItem extends StatelessWidget {
  final Second second;
  final void Function(SecondItem secondItem) onClick;

  const SecondItem({Key? key, required this.second, required this.onClick});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Card(
        margin: const EdgeInsets.all(8),
        surfaceTintColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: ListTile(
          leading: Text(
            "<<${second.title}>>",
            style: const TextStyle(color: Colors.red, ),
          ),
          title: Text(second.code,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          subtitle: Text(second.desc),
        ),
      ),
    );
  }
}
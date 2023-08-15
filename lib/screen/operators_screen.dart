import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ussd_codes/model/operator.dart';
import 'package:ussd_codes/widget/operator_item.dart';

class OperatorsScreen extends StatelessWidget {
  const OperatorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Operators',style: GoogleFonts.sourceCodePro(fontSize: 50)),
              const SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                itemCount: operatorList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 3 / 2
                ),
                itemBuilder: (context, index) => OperatorItem(operator: operatorList[index]),
              )
            ],
          ),     )
      ),
    );
  }
}

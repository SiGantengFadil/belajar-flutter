import 'package:flutter/material.dart';
 class BelajarRow extends StatelessWidget{
  const BelajarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('ini Column 1 Text 1'),
        Text('ini Column 1 Text 2'),
        Text('ini Column 1 Text 3'),
      ],
    );
  }
 }

import 'package:flutter/material.dart';

class LatihanRowColumn extends StatelessWidget {
  const LatihanRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: 52,
        color: const Color.fromARGB(255, 30, 153, 214),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.phone),
                SizedBox(height: 8),
                Text('call'),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.route),
                SizedBox(height: 8),
                Text('call'),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.share),
                SizedBox(height: 8),
                Text('call'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
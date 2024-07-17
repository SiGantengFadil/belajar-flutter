import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
      ),
      home: ListBuilder(),
    ));

class ListBuilder extends StatelessWidget {

  var androidVersions = [
    "Android Cupcake",
    "Android Donut",
    "Android Eclair",
    "Android Froyo",
    "Android Gingerbread",
    "Android Ice Cream Sandwich",
    "Android Jelly Bean",
    "Android KitKat",
    "Android Lollipop",
    "Android Marshmallow",
    "Android Nouget",
    "Android Oreo",
    "Android Pie",
    "Android Q"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return Container(
        height: 10,
        color: Colors.black,
        );
      },
     itemCount: androidVersions.length,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Text(i.toString() + "-" + androidVersions[i]),
          );
        },
    );
  }
}
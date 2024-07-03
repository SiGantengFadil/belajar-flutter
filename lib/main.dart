import 'package:flutter/material.dart';
import 'package:myapp/container.widget.dart';
import 'package:myapp/row_column/column_widget.dart';
import 'package:myapp/row_column/latihan.dart';
import 'package:myapp/row_column/latihan2.dart';
import 'package:myapp/row_column/row_column_widget.dart';

void main(){
  runApp( const MyApp ());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi PKL Internal',
      home: Scaffold(
        appBar:AppBar(
          backgroundColor: Color.fromARGB(255, 211, 16, 16),
          centerTitle: true,
          title: const Text(' Belajar Flutter'),
        ),
        body: Latihan2(),
        ),
    );
  }
}
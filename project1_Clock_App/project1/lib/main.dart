import 'package:flutter/material.dart';
import 'package:project1/ClockApp.dart';
dynamic database;
void main()async{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Alarm(),
    );
  }
}
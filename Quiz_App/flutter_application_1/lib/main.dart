import 'package:flutter/material.dart';
import 'package:flutter_application_1/quiz_app.dart';

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:quiz_app(),
    );
  }
}
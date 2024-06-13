import 'package:flutter/material.dart';
import 'package:flutter_application_1/assignment1.dart';
import 'package:flutter_application_1/assignment2.dart';
import 'package:flutter_application_1/assignment3.dart';
import 'package:flutter_application_1/assignment4.dart';
import 'package:flutter_application_1/assignment5.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: Assignment5(),
      debugShowCheckedModeBanner: false,
    );
  }
}
import 'package:assignment1/Assignment1.dart';
import 'package:assignment1/Assignment2.dart';
import 'package:assignment1/Assignment3.dart';
import 'package:assignment1/Assignment4.dart';
import 'package:assignment1/Assignment5.dart';
import 'package:flutter/material.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:assignment5(),
    );
  }
}
import 'package:assignments/assignment1.dart';
import 'package:assignments/assignment2.dart';
import 'package:assignments/assignment3.dart';
import 'package:assignments/assignment4.dart';
import 'package:assignments/assignment5.dart';
import 'package:flutter/material.dart';

void main()=>runApp(const MyApp());

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
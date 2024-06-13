
import 'package:assignment1/Assignment10.dart';
import 'package:assignment1/Assignment5.dart';
import 'package:assignment1/Assignment6.dart';
import 'package:assignment1/Assignment7.dart';
import 'package:assignment1/Assignment8.dart';
import 'package:assignment1/Assignment9.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const myApp());
}
@override
class myApp extends StatelessWidget{
  const myApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Assignment10(),
    );
  }
}
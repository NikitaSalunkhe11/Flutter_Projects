import 'package:flutter/material.dart';
import 'package:textfield_assignment/Assignment.dart';

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: 'Flutter demo',
      debugShowCheckedModeBanner: false,
      home:Assignment(title:'Add Name'),
    );
  }
}
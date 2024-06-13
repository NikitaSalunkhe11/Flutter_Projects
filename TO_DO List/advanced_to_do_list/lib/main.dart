import 'package:advanced_to_do_list/todoapp_ui.dart';
import 'package:flutter/material.dart';

void main()=>runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home:TODOAppUI(),
      debugShowCheckedModeBanner: false,
    );
  }
}
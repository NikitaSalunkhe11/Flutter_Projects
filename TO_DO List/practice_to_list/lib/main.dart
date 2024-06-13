import 'package:flutter/material.dart';
import 'package:practice_to_list/to_do_list.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:To_do_list(),
    );
  }
}


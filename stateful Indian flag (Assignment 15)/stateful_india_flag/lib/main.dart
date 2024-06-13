import 'package:flutter/material.dart';
import 'package:stateful_india_flag/Assignment14.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:IndiaFlag(),
    );
  }
}


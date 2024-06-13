
import 'package:flutter/material.dart';

// ignore: camel_case_types
class assignment5 extends StatefulWidget{
  const assignment5({super.key});

  @override
  State createState()=> _assignment();
}
// ignore: camel_case_types
class _assignment extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 229, 158, 242),
        title: const Text("Assignment 5"),
        centerTitle: true,
      ),
      body:Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
                  Colors.red,
                  Colors.red,
                  Colors.blue,
                  Colors.blue,
                ],
                stops: [0.0, 0.5, 0.5, 1.0],
              ),
            ),
        ),   
      )
    );
  }
}
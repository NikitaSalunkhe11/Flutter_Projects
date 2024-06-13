
import 'package:flutter/material.dart';

// ignore: camel_case_types
class assignment4 extends StatefulWidget{
  const assignment4({super.key});

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
        title: const Text("Assignment 4"),
        centerTitle: true,
      ),
      body:Center(
        child: Container(
          padding: const EdgeInsets.all(3.0),
          height: 200,
          width: 300,
          decoration: const BoxDecoration(
            color: Colors.amber,
            boxShadow: [
              BoxShadow(
                offset:Offset(0, -20),
                blurRadius: 20,
                color: Colors.red)
            ]
          ),
        ),
      ),
    );
  }
}
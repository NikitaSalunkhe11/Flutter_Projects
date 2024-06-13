import 'package:flutter/material.dart';

class assignment3 extends StatefulWidget{
  const assignment3({super.key});

  @override
  State createState()=> _assignment3();
}
class _assignment3 extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 3"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 170, 255, 110),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          padding: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 229, 137, 239),
            borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
            border: Border.fromBorderSide(BorderSide(color: Colors.purple,width: 3))
          ),
        ),
      ),
    );
  }
}
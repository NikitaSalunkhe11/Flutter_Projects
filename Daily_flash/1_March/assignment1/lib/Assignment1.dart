import 'package:flutter/material.dart';

// ignore: camel_case_types
class assignment1 extends StatefulWidget{
  const assignment1({super.key});

  @override
  State createState()=> _assignment();
}
class _assignment extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.person_outline_sharp),
        title: const Text("Assignment 1"),
        //shadowColor: const Color.fromARGB(255, 119, 7, 255),
        backgroundColor: const Color.fromARGB(255, 243, 119, 110),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: const Icon(Icons.ac_unit_sharp),
          ),
        ],
      ),
    );
  }
}
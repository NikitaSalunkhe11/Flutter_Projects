import 'package:flutter/material.dart';

class assignment4 extends StatefulWidget{
  const assignment4({super.key});

  @override
  State createState()=>_assignment4();
}
class _assignment4 extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("assignment 4"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body:Center(
        child: Container(
          color: Colors.red,
          child: Container(
            margin: const EdgeInsets.all(8.0),
            height: 300,
            width: 300,
            color: Colors.blue,
          ),
        ),
      )
    );
  }
}
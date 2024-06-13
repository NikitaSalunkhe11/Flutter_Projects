import 'package:flutter/material.dart';

class assignment1 extends StatefulWidget{
  const assignment1({super.key});

  @override
  State createState()=> _assignment1();
}
class _assignment1 extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignment 1"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.red,width: 5),
          ),
          child: const Center(child: Text("Inside Container",
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
        ),
      ),
    );
  }
}
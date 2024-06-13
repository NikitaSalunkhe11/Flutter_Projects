import 'package:flutter/material.dart';

class assignment2 extends StatefulWidget{
  const assignment2({super.key});

  @override
  State createState()=> _assignment2();
}
class _assignment2 extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignment 2"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
            border: const BorderDirectional(start: BorderSide(color:Colors.black,width: 5)),
          ),
          child: const Center(child: Text("Inside Container",
          style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),)),
        ),
      ),
    );
  }
}
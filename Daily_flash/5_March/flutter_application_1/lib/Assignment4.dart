
import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget{
  const Assignment4({super.key});

  @override
  State createState()=>_Assignment4();
}

class _Assignment4 extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 4"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 213, 139, 231),
      ),
      floatingActionButton: Center(
        child: Container(
          height: 50,
          width: 100,
          child: FloatingActionButton(
            onPressed: (){},
            hoverColor: Colors.orange,
            autofocus: true,
            hoverElevation: 20.0,
            child: const Text("Jay Shree Ram"),
          ),
        )
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget{
  const Assignment2({super.key});

  @override
  State createState()=>_Assignment2();
}

class _Assignment2 extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 2"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 213, 139, 231),
      ),
      body: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: ElevatedButton(
            onPressed: () {
          
            },
            style: ElevatedButton.styleFrom(
          
             //shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0),
             shape:const CircleBorder(),
             side:const  BorderSide(color: Colors.red,width: 2.3),
             ),

            child: const Text("Press Here"),
                ),
        )
      )
    );
  }
}

import 'package:flutter/material.dart';

class assign1 extends StatefulWidget{
  const assign1({super.key});

  @override
  State createState()=>_assign1();
}

class _assign1 extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 1"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 213, 139, 231),
      ),
      body:Center(
        child: ElevatedButton(
          onPressed: (){

          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            shadowColor: Colors.red,
            elevation: 20,
            backgroundColor:Colors.amber,
          ),
          child: const Text("Press Me"),
        ),
      ),
    );
  }
}
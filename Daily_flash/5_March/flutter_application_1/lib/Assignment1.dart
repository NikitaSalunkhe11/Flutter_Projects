
import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget{
  const Assignment1({super.key});

  @override
  State createState()=>_Assignment1();
}

class _Assignment1 extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 1"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 213, 139, 231),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            boxShadow: [
              BoxShadow(offset: Offset(5,5),color: Colors.red,blurRadius: 10,blurStyle: BlurStyle.normal),
            ]
          ),
          child: ElevatedButton(
            style: const ButtonStyle(
            //shadowColor: MaterialStatePropertyAll(Colors.red),
            overlayColor: MaterialStatePropertyAll(Colors.blue),
            ),
            onPressed: () {  },
            child: const Text("Press here"),
          ),
        ),
      ),
    );
  }
}
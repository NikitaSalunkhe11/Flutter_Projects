import 'package:flutter/material.dart';

class Assignment9 extends StatelessWidget{
  const Assignment9({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 153, 197, 233),
        title: const Text("Assignment9",
        style: TextStyle(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w700,
          fontSize: 30,
          color: Colors.red,
        ),
        ),
      ),
      body: Center(
        child:Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
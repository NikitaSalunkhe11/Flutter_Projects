import 'package:flutter/material.dart';

class Assignment10 extends StatelessWidget{
  const Assignment10({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: const Color.fromARGB(255, 244, 239, 241),
        centerTitle: true,
        title: const Text("Assignment10"),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          //color: Colors.amber,
          decoration:const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)
            ),
          ),
        ),
      ),
    );
  }
}
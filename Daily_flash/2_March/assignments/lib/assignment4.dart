import 'package:flutter/material.dart';

class assignment4 extends StatefulWidget{
  const assignment4({super.key});

  @override
  State createState()=> _assignment4();
}
class _assignment4 extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 4"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 110, 190),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 400,
          padding: const EdgeInsets.all(8.0),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 250, 140, 177),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            border: Border.fromBorderSide(BorderSide(color: Colors.pink,width: 5),)
          ),
          child: const Text(
            "Nikita Salunkhe",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

// ignore: camel_case_types
class assignment2 extends StatefulWidget{
  const assignment2({super.key});

  @override
  State createState()=> _assignment2();
}
// ignore: camel_case_types
class _assignment2 extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 229, 158, 242),
        title: const Text("Assignment 2"),
        centerTitle: true,
      ),
       body:Center(
        child: Container(
          height: 300,
          width: 300,
         // color: Colors.amber,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://tse1.mm.bing.net/th?id=OIP.eXTEdoH2OJ57GqbdwBzQjAHaEo&pid=Api&P=0&h=180"),
              fit: BoxFit.cover,
              ), 
          ),
          child: const Center(
            child: Text(
              "Core2Web",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          )
        ),
      ),
    );
  }
}
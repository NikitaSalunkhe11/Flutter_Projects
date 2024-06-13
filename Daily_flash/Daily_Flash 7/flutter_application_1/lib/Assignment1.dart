import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget{
  const Assignment1({super.key});

  @override
  State<Assignment1> createState()=> _Assignment1();
}

class _Assignment1 extends State<Assignment1>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Daily Flash 7"),
      ),
      body:Center(
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ),
            const SizedBox(width: 10,),
            Container(
              height: 80,
              width: 80,
              color: Color.fromARGB(255, 243, 33, 135),
            ),
            const SizedBox(width: 10,),
            Container(
              height: 70,
              width: 80,
              color: Color.fromARGB(255, 165, 39, 176),
            ),
          ]
        ),
      ),
    );
  }
}
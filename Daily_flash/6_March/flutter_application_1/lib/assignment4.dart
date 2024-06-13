import 'package:flutter/material.dart';

class Assignment4 extends StatefulWidget{
  const Assignment4({super.key});

  @override
  State createState()=> _Assignment4();
}

class _Assignment4 extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Information"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 240, 162, 188),
      ),
      body:Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ),
            Container(
              height: 100,
              width: 100,
              color: Color.fromARGB(255, 11, 202, 37),
            ),
          ],
        ),
      )
    );
  }
}
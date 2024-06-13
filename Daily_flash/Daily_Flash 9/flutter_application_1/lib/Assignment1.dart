import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment1 extends StatefulWidget{
  const Assignment1({super.key});

  @override
  State createState()=>_Assignment1State();
}

class _Assignment1State extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("DailyFlash 9"),
        backgroundColor: const Color.fromARGB(255, 225, 134, 165),
      ), 
      body:ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Center(
            child: Container(
              margin: const EdgeInsets.all(10.0),
              height: 60,
              width: 60,
              color: const Color.fromARGB(255, 146, 186, 219),
            ),
          );
        },
      ),
    );
  }
}
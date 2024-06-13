
import 'package:flutter/material.dart';

class Assignment8 extends StatefulWidget{
  const Assignment8({super.key});

  @override
  State<Assignment8> createState()=> _Assignment8();
}

class _Assignment8 extends State<Assignment8>{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container Border"),
      ),
      body:Center(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Container(
              color:Colors.blue,
              child:Container(
              height: 100,
              width: 100,
              color: Colors.red,
              //alignment:Alignment.center,
              //padding: const EdgeInsets.all(100.0),
              margin: const EdgeInsets.all(20.0),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
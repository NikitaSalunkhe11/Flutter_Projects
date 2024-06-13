import 'dart:ui';

import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget{
  const Assignment5({super.key});

  @override
  State createState()=> _Assignment5();
}
class _Assignment5 extends State{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily Flash 11"),
        backgroundColor: const Color.fromARGB(255, 238, 143, 175),
      ),
      body:  Center(
        child:Padding(
          padding: EdgeInsets.only(left:60.0,right: 60.0),
          child: TextField(
            maxLines: 7,
            cursorColor: Colors.red,
            //expands: true,
            selectionHeightStyle: BoxHeightStyle.max,
            decoration:InputDecoration(
              labelText: 'Enter your name',
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red,width: 2.0),
                borderRadius: BorderRadius.circular(30.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green,width: 2.0),
                borderRadius: BorderRadius.circular(30.0),
              )
            ),
          ),
        ),
      ),
    );
  }
}
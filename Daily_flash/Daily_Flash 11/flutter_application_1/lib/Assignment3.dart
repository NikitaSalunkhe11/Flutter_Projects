import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget{
  const Assignment3({super.key});

  @override
  State createState()=> _Assignment3();
}
class _Assignment3 extends State{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily Flash 11"),
        backgroundColor: const Color.fromARGB(255, 238, 143, 175),
      ),
      body: const Center(
        child:Padding(
          padding: EdgeInsets.all(20.0),
          child: TextField(
            textAlign: TextAlign.center,
            decoration:InputDecoration(
              filled: true,
              fillColor: Colors.amber,
              hintText: 'Enter Name',
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red,width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
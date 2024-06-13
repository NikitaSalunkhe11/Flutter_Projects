import 'package:flutter/material.dart';

class Assignment extends StatefulWidget{
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment>{

  int count=0;

  void _incrementCounter(){
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Color Change Demo"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          (count == 0)
          ? Container(
            height: 300,
            width: 300,
            color: Colors.black,
          )
          :Container(),
          
          (count % 3 == 1)
          ? Container(
            height: 300,
            width: 300,
            color:Colors.amber,
          )
          :Container(),  

          (count % 3 == 2)
          ? Container(
            height: 300,
            width: 300,
            color: Colors.red,
          )
          :Container(),

          (count % 3 == 0)
          ? Container(
            height: 300,
            width: 300,
            color: Colors.blue,
          )
          :Container(),
        ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),  
      ),
    );
  }
}
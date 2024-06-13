import 'package:flutter/material.dart';

class ColumnDemo extends StatelessWidget{
  const ColumnDemo({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo"),
      ),
      
       body:
       SizedBox(
        width: double.infinity,
        child:
        Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.amber,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.orange,
          )
        ],
      ),),
    );
  }
}
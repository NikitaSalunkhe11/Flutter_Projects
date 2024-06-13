import 'package:flutter/material.dart';

class RowDemo extends StatelessWidget{
  const RowDemo({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:
      SizedBox(
        height: double.infinity,
        child:
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 100,
            width:100,
            color: Colors.amber,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.black12,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          )
        ],
      ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget{
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("3 Asset Images"),
      ),
      body: Center(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height:150,
              width:150,
              child:Image.asset("assets/Images/one.jpg"),
            ),
            Container(
              height:150,
              width:150,
              child:Image.asset("assets/Images/two.jpg"),
            ),
            Container(
              height:150,
              width:150,
              child:Image.asset("assets/Images/three.jpg"),
            ),
          ],
        )
      ),
    );
  }
}
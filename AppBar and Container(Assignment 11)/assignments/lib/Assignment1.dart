import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignment1 extends StatelessWidget{
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        shadowColor: Colors.black45,
        backgroundColor: Colors.deepPurple,
        title:const Text("Hello Core2web"),
       // toolbarHeight: 100,

        actions: const [
          Icon(Icons.favorite,
          color: Colors.purple,),
          Icon(Icons.face_4_outlined),
          ],
      ),
      body: 
      Center(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Container(
            height: 200,
            width:200,
            color: Colors.blue,
        ),
        SizedBox(
          height: 10,
          width: 10,
        ),
        Container(
          height: 200,
          width: 200,
          color: Colors.pink,
        )
        ],
        ),
      ),
    );
  }
}
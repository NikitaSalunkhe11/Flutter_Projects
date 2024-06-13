import 'package:flutter/material.dart';

class assignment3 extends StatefulWidget{
  const assignment3({super.key});

  @override
  State createState()=>_assignment3();
}
class _assignment3 extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("assignment 3"),
        centerTitle: true,
        backgroundColor: Colors.purple,
        shape:const RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.only(
            bottomStart: Radius.circular(20.0),
            bottomEnd: Radius.circular(20.0),
          ),
        ),
      ),
    );
  }
}
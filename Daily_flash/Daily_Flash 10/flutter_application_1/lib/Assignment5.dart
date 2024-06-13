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
        title: const Text("Daily Flash 10"),
        backgroundColor: const Color.fromARGB(255, 226, 174, 236),
      ),
      body: Center(
        child: Container( 
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            //borderRadius: BorderRadius.all(Radius.elliptical(100.0,90.0)),
            gradient: LinearGradient(colors: [Colors.blue,Colors.purple,Colors.green],),
            boxShadow: [
              BoxShadow(color: Colors.red,offset: Offset(10, 10),)
            ]
          ),
        ),
      ),
    );
  }
}
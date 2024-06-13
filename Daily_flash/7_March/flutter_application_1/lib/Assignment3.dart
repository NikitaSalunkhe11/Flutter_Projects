import 'package:flutter/material.dart';

class Assignmen3 extends StatefulWidget{
  const Assignmen3({super.key});

  @override
  State createState()=> _assignment3();
}
// ignore: camel_case_types
class _assignment3 extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Daily Flash",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 120,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 70,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 70,
                width: 100,
                color: Colors.purple,
              ),
            ],
          ),
          const SizedBox(
            height:200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 70,
                width: 100,
                color: Colors.amber,
              ),
              Container(
                height: 70,
                width: 100,
                color: Colors.green,
              ),
            ],)
        ],
      ),
    );
  }
}
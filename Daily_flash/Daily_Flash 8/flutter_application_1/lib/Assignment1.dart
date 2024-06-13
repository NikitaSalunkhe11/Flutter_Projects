import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget{
  const Assignment1({super.key});

  @override
  State createState()=> _Assignment1();
}

class _Assignment1 extends State{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
         title:Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
           children: [
             Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(40),
                ),
              ),
           ],
         ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.orange,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 100,
              color: Colors.green,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 200,
                  width: 200,
                  color: const Color.fromARGB(255, 237, 49, 205),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 200,
                  width: 200,
                  color: const Color.fromARGB(255, 21, 158, 192),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
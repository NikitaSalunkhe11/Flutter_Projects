import 'package:flutter/material.dart';

class Assignmen4 extends StatefulWidget{
  const Assignmen4({super.key});

  @override
  State createState()=> _assignment4();
}
// ignore: camel_case_types
class _assignment4 extends State{

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
      body:Center(
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 460,
                decoration: BoxDecoration(
                  border:Border.all(color: Colors.black),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Row(
                    children: [
                      Container(
                        height: 180,
                        width: 150,
                        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            height: 130,
                            width: 270,
                            color: Colors.red,
                          ),
                        ),
                      ),
                     const SizedBox(
                      width: 60,
                     ),
                      Container(
                        height: 180,
                        width: 150,
                        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            height: 130,
                            width: 270,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
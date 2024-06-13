import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Assignmen1 extends StatefulWidget{
  const Assignmen1({super.key});

  @override
  State createState()=> _assignment1();
}
// ignore: camel_case_types
class _assignment1 extends State{

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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(fit:BoxFit.cover,"lib/assets/th.jpeg"),

          const Padding(
            padding:  EdgeInsets.all(20.0),
            child:  Text(
              "PIZZA",
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Expanded(
              child: Text("A Large Circle of flat bread baked with cheese, tomatoes, and vegetables spread on to",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
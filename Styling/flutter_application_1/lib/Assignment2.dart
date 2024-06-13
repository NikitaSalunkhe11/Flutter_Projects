import 'package:flutter/material.dart';
class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State createState() => _Assignment2();
}

class _Assignment2 extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color.fromARGB(255, 229, 144, 172),
      appBar: AppBar(
        title: const Text(
          "Styling Container",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: Colors.black,
            decorationStyle: TextDecorationStyle.dashed,
            decoration: TextDecoration.underline,
            decorationColor: Colors.blue,
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          color: Colors.pink,
          child: Container(
            padding: const EdgeInsets.only(top:30,bottom: 30,left: 10,right: 10),
            margin: EdgeInsets.all(30.0),
            height: 200,
            width: 200,
            color: const Color.fromARGB(255, 54, 177, 244),
            child: Container(
             //margin: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                color: Colors.black, 
                border: Border.all(width: 4,color: Colors.white,),
                borderRadius: const BorderRadius.all(Radius.elliptical(10.0, 10.0)),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.purple,offset:Offset(30, 30),blurRadius: 8,
                  ),
                  BoxShadow(
                    color: Colors.green,
                    offset: Offset(20, 20),
                    blurRadius: 8
                  ),
                  BoxShadow(
                    color: Colors.yellow,
                    offset: Offset(10, 10),
                    blurRadius: 8,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
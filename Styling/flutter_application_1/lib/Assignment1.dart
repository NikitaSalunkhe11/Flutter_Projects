import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State createState() => _Assignment1();
}

class _Assignment1 extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          height: 200,
          width: 200,
          color: Colors.red,
          padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 30.0),
          child: Container(
           // margin: const EdgeInsets.only(top: 10,left: 10,bottom: 10),
            //color: Colors.blue,
            decoration: const BoxDecoration(
              border: Border.symmetric(
                horizontal:BorderSide(width: 5.0),
                //color: Colors.white,
              ),
            ),
            //color: Colors.blue,
           // child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPbbFQ8xwL341ESVIhlU93KDhCazAFUKIzmQ&usqp=CAU",
            ),
          ),
        ),
    );
  }
}

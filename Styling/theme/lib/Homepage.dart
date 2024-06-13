import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key,required this.title});

  final String title; 

  State createState()=> _HomePage();
}
class _HomePage extends State<HomePage>{

  int _counter=0;

  void _incrementCounter(){
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children:[
            Text(
              "You have pushed the button this many times",
              style:Theme.of(context).textTheme.displayLarge,
            ),
            Text(
              '$_counter',
              style:Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              onPressed:(){
                _incrementCounter();
              },
              child:const Text(
                "My Button",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
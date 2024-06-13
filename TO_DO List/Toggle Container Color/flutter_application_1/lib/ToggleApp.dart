import 'package:flutter/material.dart';

class ToggleApp extends StatefulWidget{
  const ToggleApp({super.key});

  @override
  State<ToggleApp> createState()=> _ToggleApp();
}
class _ToggleApp extends State<ToggleApp>{

  int count=0;
  int count1=0;
  void _incrementCount(){
    setState(() {
      count++;
    });
  }
  Widget _value1(){
    return Container(
      height: 150,
      width: 150,
      color: const Color.fromARGB(255, 5, 8, 11),
    );
  }
  Widget _value2(){
    return Container(
      height: 150,
      width: 150,
      color: Colors.blue,
    );
  }
  void _increment(){
    setState(() {
      count1++;
    });
  }

  Widget _value3(){
    return Container(
      height: 150,
      width: 150,
      color: Colors.black,
    );
  }
  Widget _value4(){
    return Container(
      height: 150,
      width: 150,
      color: Colors.red,
    );
  }
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Toggle Color",
          style: TextStyle(
            color: Colors.amber,
            fontSize: 20,
            fontFamily: AutofillHints.countryName,
        ),
      ),
    ),
    body: Center(
      child:Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (count % 2 == 0)
            ?_value1()
            :_value2(),

            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed:_incrementCount, 
              child:const Text("Button 1")
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (count1 % 2 == 0)
            ?_value3()
            :_value4(),

            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed:_increment, 
              child:const Text("Button 2"),
            ),
          ],
        )
      ],
    ),
    ),
    );
  }
}
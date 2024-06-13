import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget{
  const Assignment5({super.key});

  @override
  State<Assignment5> createState()=> _Assignment5();
}

class _Assignment5 extends State<Assignment5>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Daily Flash 7"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  flex:6,
                  child:Container(
                    height: 100,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex:3,
                  child:Container(
                    height: 100,
                    color: const Color.fromARGB(255, 244, 54, 231),
                  ),
                ),
                Expanded(
                  flex:1,
                  child:Container(
                    height: 100,
                    color: const Color.fromARGB(255, 54, 244, 76),
                  ),
                ),
                
              ],
            ),
            const SizedBox(height: 20,),
             Row(
              children: [
                Expanded(
                  flex:5,
                  child:Container(
                    height: 100,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex:4,
                  child:Container(
                    height: 100,
                    color: const Color.fromARGB(255, 244, 54, 231),
                  ),
                ),
                Expanded(
                  flex:1,
                  child:Container(
                    height: 100,
                    color: const Color.fromARGB(255, 54, 244, 76),
                  ),
                ),
                
              ],
            ),
            const SizedBox(height: 20,),
             Row(
              children: [
                Expanded(
                  flex:7,
                  child:Container(
                    height: 100,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex:2,
                  child:Container(
                    height: 100,
                    color: const Color.fromARGB(255, 244, 54, 231),
                  ),
                ),
                Expanded(
                  flex:1,
                  child:Container(
                    height: 100,
                    color: const Color.fromARGB(255, 54, 244, 76),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
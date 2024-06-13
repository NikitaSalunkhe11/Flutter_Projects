import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget{
  const Assignment5({super.key});

  @override
  State createState()=> _Assignment5State();
}

class _Assignment5State extends State{

  @override
  Widget build(BuildContext context){ 
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 157, 195, 226),
        title: const Text("Daily Flash"),
      ),
      body:ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index){
          return Center(
            child: Container(
              margin: EdgeInsets.all(10.0),
              height: 80,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black)
              ),
              child:Row(
                children: [
                  const Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text("Title"),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Description"),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        color: Colors.pink,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.add)
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
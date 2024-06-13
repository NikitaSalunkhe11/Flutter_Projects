import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget{
  const Assignment2({super.key});

  @override
  State createState()=> _Assignment2State();
  
}

class _Assignment2State extends State{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
        title: Text("Daily Flash 9"),
        backgroundColor: Color.fromARGB(255, 224, 143, 170),
       ),  
       body: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 2),
                ),
                child: Row(
                  children: [
                Container(
                  margin: const EdgeInsets.only(left:40),
                  height: 80,
                  width: 80,
                  child:Image.network(
                    fit: BoxFit.cover, 
                    "https://tse4.mm.bing.net/th?id=OIP.rBc-qmvyldenP0lbMRSsIQAAAA&pid=Api&P=0&h=180",
                  ),
                ),
                const SizedBox(
                  width: 200,
                ),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: const BorderRadius.all(Radius.circular(10.0))
                  ),
                  child: const Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: Text(
                      textAlign: TextAlign.center,
                      "Core2web",
                    ),
                  ),
                )
                ],
                ),
              ),
            ],
          );    
        },
      ), 
    );
  }
}
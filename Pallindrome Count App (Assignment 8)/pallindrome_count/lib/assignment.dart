

import 'package:flutter/material.dart';

class Assignment extends StatefulWidget{
  const Assignment({super.key});

  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment>{
  int count=0;
  void countPallindrome(){
    count=0;
    List<int> l1=[1,2,3,4,5,10,11,12,13];
    for(int i=0;i<l1.length;i++){
      int? num=l1[i].abs();
      int? temp=l1[i].abs();
      int? rev=0;
      while(num != 0){
        rev=rev!*10 + num!%10;
        num=num ~/ 10; 
      }
      if(rev == temp){
        count=count+1;
      }
    }
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pallindrome count"),
        backgroundColor: Colors.amber,
      ),
      body:SizedBox(
        width:double.infinity,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                countPallindrome();
                setState(() {});
              }, 
              child: const Text("Check Pallindrome"),
              ),
              const SizedBox(
                height:20,
              ),
              Text("$count Numbers are Pallindrome"),
              const SizedBox(
                height: 50,
              ),
          ],
        ),
      ),
    );
  }
}
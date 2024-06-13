import 'package:flutter/material.dart';

class Assignment2 extends StatefulWidget{
  const Assignment2({super.key});

  @override
  State createState()=> _Assignment1();
}
class _Assignment1 extends State{

  final TextEditingController _day= TextEditingController();
  List dayList=[];
  int i=0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const Text("Daily Flash 12"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              TextField(
                controller: _day,
                onSubmitted: (value){
                  addDayInList();  
                },
                decoration:InputDecoration(
                  hintText: 'Enter Day',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    borderSide: const BorderSide(color: Colors.black,width: 1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    borderSide: const BorderSide(color: Color.fromARGB(255, 236, 37, 37),width: 1.5),
                  ),
                ) , 
              ),
              Row(
                children: [
                  Text("$dayList"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  void addDayInList(){
    String value= _day.text.trim();
    if(value.isNotEmpty){
    setState(() {
      dayList.add(value);
      i=i+1;
      _day.clear();
    });
    
  }
  }
}
import 'package:flutter/material.dart';

class Assignment3 extends StatefulWidget{
  const Assignment3({super.key});

  @override
  State createState()=> _Assignment3();
}

class _Assignment3 extends State{

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _collegeController = TextEditingController();

   String _error1='';
   String _error2='';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 230, 176, 239),
        title: const Text("Daily Flash 12"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  hintText: 'Enter your Name',
                  errorText: _error1,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(color: Colors.blue,width:1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(color: Colors.red,width:1.5),
                  )
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _collegeController,
                decoration: InputDecoration(
                  hintText: 'Enter your College Name',
                  errorText: _error2,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(color: Colors.blue,width:1.5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(color: Colors.red,width:1.5),
                  )
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    checkText();
                  }); 
                },
                child: const Text("Submit")
              ),
            ],
          ),
        ),
      ),
    );
  }
  void checkText(){
    setState(() {
      if(_nameController.text.isEmpty){
        _error1='Enter Your Name';
      }else{
        _error1='';
      } 
      if(_collegeController.text.isEmpty){
        _error2= 'Enter your College Name';
      }else{
        _error2='';
      }
    });
  }
}
import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget{
  const Assignment5({super.key});

  @override
  State createState()=>_Assignment5State();
}

class _Assignment5State extends State{

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mobController = TextEditingController();

  String name = '';
  String mob = '';

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("DailyFlash 9"),
        backgroundColor: const Color.fromARGB(255, 225, 134, 165),
      ), 
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'Enter Name',
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:BorderSide(color: Colors.red), 
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.green,),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.blue)
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: _mobController,
              decoration: InputDecoration(
                hintText: 'Enter Mobile No',
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide:BorderSide(color: Colors.red), 
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.green,),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.blue)
                ),
              ),
            ),
          ),
          ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(const Color.fromARGB(255, 137, 191, 234))
            ),
            onPressed: (){
              setState(() {
                name=_nameController.text;
                mob=_mobController.text;
              });
            }, 
            child:const Text('Submit',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text("Name : $name"),
          Text("Mobile No. : $mob"),
        ],
      )
    );
  }
}
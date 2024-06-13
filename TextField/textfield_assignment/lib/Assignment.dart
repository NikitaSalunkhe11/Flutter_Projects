import 'package:flutter/material.dart';

class Assignment extends StatefulWidget{
  const Assignment({super.key, required this.title});

  final String title;

  @override
  State<Assignment> createState()=> _Assignment();
}
class _Assignment extends State<Assignment>{

  final TextEditingController _nametexteditingcontroller = TextEditingController();

  final FocusNode _nameFocusNode = FocusNode();

  List<String> names=[];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text(widget.title),
        backgroundColor: Colors.black,
        foregroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: _nametexteditingcontroller,
            focusNode: _nameFocusNode,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Enter Name",
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                  color: Colors.blue,
                ),
              ),
              focusedBorder:OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 30, 30, 233),
              ),
            ),
            ),
            cursorColor: const Color.fromARGB(255, 16, 8, 17),
            textInputAction:TextInputAction.done,
            keyboardType: TextInputType.phone,
            onChanged: (value) => print("Value = $value"),

            onSubmitted: (value) => print("submitted = $value"),
          ),    

          const SizedBox(
            //width: double.infinity,
            height: 30,
          ),
          Expanded(
            child:ListView.builder(
              itemCount: names.length, 
              
              itemBuilder: (context, index) {
            
            return Container(
              height: 40,
              //padding: EdgeInsets.all(20.0),
              margin: const EdgeInsets.all(15.0),
              alignment: Alignment.center,
              //color:  const Color.fromARGB(255, 158, 197, 229),
              decoration: BoxDecoration(
                color:const Color.fromARGB(255, 160, 206, 243),
                borderRadius: BorderRadius.circular(40.0),
                border: Border.all(color: Colors.black,width: 2.0),
                boxShadow:const [
                  BoxShadow(
                    color:Color.fromARGB(255, 7, 127, 255),offset: Offset(5,5),blurRadius: 10,
                ),
                
                ],
            ),
            child:Text("${names[index]}"),
            );
          },
          ),
          ),
        ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              String val=_nametexteditingcontroller.text;
              if(val.isNotEmpty){
                names.add(val);
              }
            });
          },
        ),
    );
  }
}
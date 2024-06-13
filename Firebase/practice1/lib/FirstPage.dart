
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirstPage extends StatefulWidget{
  const FirstPage({super.key});

  @override
  State createState()=> _FirstPage();
}
class _FirstPage extends State{

  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const Text("Student Info"),
        backgroundColor: const Color.fromARGB(255, 229, 142, 171),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left:30.0,right: 30.0),
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: 'Enter your name',
                ),
              ),
              TextFormField(
                controller: mobileController,
                decoration: const InputDecoration(
                  hintText: 'Enter your mobile no.',
                ),
              ),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: 'Enter your Email',
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left:40,right:40),
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      CollectionReference collref = FirebaseFirestore.instance.collection("Student");
                      collref.add(
                        {
                          'name':nameController.text,
                          'mobile':mobileController.text,
                          'email':emailController.text,
                        }
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor:const MaterialStatePropertyAll(Colors.purple),
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ), 
                    child: const Text("Save",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
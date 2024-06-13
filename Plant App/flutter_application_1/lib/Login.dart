import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/Verification.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({super.key});

  @override
  State createState()=> _LoginPageState();
}

class _LoginPageState extends State{
  
  final TextEditingController _mobNoController = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 212),
            child: Image.asset("lib/assets/Group 5314.png")
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            width: 200,
            child: Text(
              textAlign: TextAlign.center,
              "Log in",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              height: 50,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.06),offset: Offset(10, 10),blurRadius: 20.0
                  )
                ]
              ),
              child: TextField(
                controller: _mobNoController,
                decoration: InputDecoration(
                  fillColor: Color.fromRGBO(255, 255, 255, 1),
                  filled: true,
                  prefixIcon: const Icon(Icons.phone_outlined,
                  color: Color.fromRGBO(164, 164, 164, 1),),
                  hintText: 'Mobile Number',
                  hintStyle: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(164, 164, 164, 1)
                  ),
                  
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Color.fromRGBO(204, 211, 196, 1)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Color.fromRGBO(204, 211, 196, 1)),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:30,right: 30),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: const MaterialStatePropertyAll(Color.fromRGBO(124, 180, 70, 1)),          
                fixedSize: const MaterialStatePropertyAll(Size.fromHeight(50)),                
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              onPressed: (){
                  NavigateToNextPage2();  
              },
              child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        "Login",
                        style: GoogleFonts.rubik(
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
              ),
          ),
          Image.asset("lib/assets/Group 5315.png")
        ],
      )
    );
  }
  
  // ignore: non_constant_identifier_names
  void NavigateToNextPage2() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context)=> const Verification(),
      )
    );
  }
}
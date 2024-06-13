// ignore: file_names
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Login.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State createState()=> _HomePageState();
}
class _HomePageState extends State{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
            Image.asset(
              fit: BoxFit.contain,
              "lib/assets/image 2.png"),
          Padding(
            padding: const EdgeInsets.only(top: 20,left:60),
            child: Text(
              "Enjoy Your ",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 34.22,
                  fontWeight: FontWeight.w400,
                  //color: Color.fromARGB(0,0,0,1),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:60),
            child: Row(
              children:[
                Text(
                  "Life with",
                  style:GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 34.22,
                      fontWeight: FontWeight.w400,
                      //color: Color.fromARGB(0,0,0,1),
                    ),
                  ),
                ),
                const SizedBox(
                  width:10,
                ),
                Text(
                  "Plants",
                  style:GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 34.22,
                      fontWeight: FontWeight.w600,
                      //color: Color.fromARGB(0,0,0,1),
                    ),
                  ),
                ),
              ]
            ),
          ),
          const SizedBox(
            height: 40,
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
                  NavigateToNextPage();  
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    "Get Started",
                    style: GoogleFonts.rubik(
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                  ),
                ],
              )),
          )
        ],
      )
    );
  }
  // ignore: non_constant_identifier_names
  void NavigateToNextPage(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder:(context)=> const LoginPage(),
      )
    );
  }
}
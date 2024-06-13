import 'package:expense_manager/MyTextField/mytextfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Login_Screen extends StatefulWidget{
  const Login_Screen({super.key});

  @override
  State createState()=> _Login_screen();
}

// ignore: camel_case_types
class _Login_screen extends State{

  final TextEditingController _usernamecon = TextEditingController();
  final TextEditingController _passwordcon = TextEditingController();
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 100,
          ),
          Center(
            child: Image.asset("lib/assets/Group 77.png"),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left:50,right: 50),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [ 
                Text(
                  "Login to your Account",
                  style: GoogleFonts.poppins(
                    textStyle:const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(0,0,0,1),
                    )
                  ),
                ),
                myTextField(
                  controller: _usernamecon,
                  hinttext: 'username',
                ),
                const SizedBox(
                  height: 30,
                ),
                myTextField(
                  controller: _passwordcon,
                  hinttext: 'password',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
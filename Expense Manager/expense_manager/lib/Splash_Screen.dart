import 'package:expense_manager/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Splash_Screen extends StatefulWidget{
  const Splash_Screen({super.key});

  @override
  State createState()=> _Splash_Screen_State();
}
// ignore: camel_case_types
class _Splash_Screen_State extends State{
  Widget build(BuildContext context){
    return Scaffold(
      body:Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 300,
          ),
        Center(
          child: Container(
            height: 144,
            width: 144,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(234, 238, 235, 1),
            ),
            child: Image.asset("lib/assets/Group 77.png"),
          ),
        ),
        const Spacer(),
        TextButton(
          onPressed: (){
            navigateToNextPage();
          },
          child: Text(
            "Expense Manager",
            style:GoogleFonts.poppins(
              textStyle:const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(0,0,0,1),
              ),
              )
            ) 
            ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
  void navigateToNextPage(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Login_Screen(),
      ),
    );
  }
}
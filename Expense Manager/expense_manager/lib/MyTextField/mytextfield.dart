
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable, camel_case_types
class myTextField extends StatelessWidget{

  final TextEditingController? controller;
  final String? hinttext;
  
  myTextField(
    {super.key, required this.controller,this.hinttext}

  );
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.15),
            blurRadius: 10,
            offset: Offset(0, 3),
          )
        ]
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: GoogleFonts.poppins(
            textStyle:const TextStyle(
              color: Color.fromRGBO(0, 0, 0, 0.4),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          )
        ),
      ),
    );
  }
}
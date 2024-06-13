import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_application_1/LandingPage.dart';
import 'package:flutter_application_1/Login.dart';
import 'package:google_fonts/google_fonts.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State createState() => _verification();
}

class _verification extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {
                NavigateToPreviousPage();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            const Spacer(),
            Image.asset("lib/assets/Group 5314 (2).png")
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text(
            "Verification",
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              letterSpacing: 1,
              //color: Colors.black,
            )),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text(
            "Enter the OTP code from the phone we",
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(0, 0, 0, 0.6),
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40.0),
          child: Text(
            "just sent you.",
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(0, 0, 0, 0.6),
            )
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30,top:30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 56,
                width: 56,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.06),
                      offset: Offset(0, 8),
                      blurRadius: 20,
                    )
                  ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Color.fromRGBO(255, 255, 255, 1),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Color.fromRGBO(204, 211, 196, 1))
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Color.fromRGBO(204, 211, 196, 1))
                    )
                  ),
                ),
              ),
              Container(
                height: 56,
                width: 56,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.06),
                      offset: Offset(0, 8),
                      blurRadius: 20,
                    )
                  ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Color.fromRGBO(255, 255, 255, 1),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Color.fromRGBO(204, 211, 196, 1))
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Color.fromRGBO(204, 211, 196, 1))
                    )
                  ),
                ),
              ),
              Container(
                height: 56,
                width: 56,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.06),
                      offset: Offset(0, 8),
                      blurRadius: 20,
                    )
                  ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Color.fromRGBO(255, 255, 255, 1),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Color.fromRGBO(204, 211, 196, 1))
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Color.fromRGBO(204, 211, 196, 1))
                    )
                  ),
                ),
              ),
              Container(
                height: 56,
                width: 56,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.06),
                      offset: Offset(0, 8),
                      blurRadius: 20,
                    )
                  ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Color.fromRGBO(255, 255, 255, 1),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Color.fromRGBO(204, 211, 196, 1))
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Color.fromRGBO(204, 211, 196, 1))
                    )
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:40),
          child: Row(
            children: [
              Text(
                "Don’t receive OTP code! ",
                style: GoogleFonts.poppins(
                  textStyle:const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              Text(
                "Resend",
                style: GoogleFonts.poppins(
                  textStyle:const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
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
                  NavigateToNextPage4();  
              },
              child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        "Submit",
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
      ],
    )
    );
  }

  void NavigateToPreviousPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }
  
  void NavigateToNextPage4() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context)=>const LandingPage(),
      )
    );
  }
}

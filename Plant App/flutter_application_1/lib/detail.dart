
import 'package:flutter/material.dart';
import 'package:flutter_application_1/LandingPage.dart';
import 'package:google_fonts/google_fonts.dart';

class Detail extends StatefulWidget{
  const Detail({super.key});

  @override
  State createState()=> _Detail();
}
class _Detail extends State{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> const LandingPage()),
                    );
                  }, 
                  icon: const Icon(Icons.arrow_back),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Center(child: Image.asset("lib/assets/Group 5484.png")),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 4,
                backgroundColor: Color.fromRGBO(62, 102, 24, 1),
              ),
              SizedBox(
                width: 8,
              ),
              CircleAvatar(
                radius: 4,
                backgroundColor: Color.fromRGBO(197, 214, 181, 1),
              ),
              SizedBox(
                width: 8,
              ),
              CircleAvatar(
                radius: 4,
                backgroundColor: Color.fromRGBO(197, 214, 181, 1),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:30),
                child: Text(
                  "Snake Plants",
                  style: GoogleFonts.poppins(
                    textStyle:const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left:30,top:10),
            child: Text(
              "Plansts make your life with minimal and ",
              style: GoogleFonts.poppins(
                textStyle:const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(8, 48, 48, 1)
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:30),
            child: Text(
              "happy love the plants more and enjoy life.",
              style: GoogleFonts.poppins(
                textStyle:const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(8, 48, 48, 1)
                ),
              ),
            ),
          ),
          Container(
            height: 200,
            width: 320,
            margin: const EdgeInsets.only(left:30,top:30),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(118, 152, 75, 1),
              borderRadius: BorderRadius.circular(20),
            ),
            child:Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround, 
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Image.asset("lib/assets/Group 5470.png"),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Height",
                            style:GoogleFonts.poppins(
                              textStyle:const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 1)
                              )
                            )
                          ),
                          Text(
                            "30cm-40cm",
                            style:GoogleFonts.poppins(
                              textStyle:const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 0.6)
                              )
                            )
                          )
                        ],
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Image.asset("lib/assets/thermometer.png"),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Temperture",
                            style:GoogleFonts.poppins(
                              textStyle:const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 1)
                              )
                            )
                          ),
                          Text(
                            "20’C-25’C",
                            style:GoogleFonts.poppins(
                              textStyle:const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 0.6)
                              )
                            )
                          )
                        ],
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child:Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Image.asset("lib/assets/Vector.png"),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Pot",
                            style:GoogleFonts.poppins(
                              textStyle:const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 1)
                              )
                            )
                          ),
                          Text(
                            "Ciramic Pot",
                            style:GoogleFonts.poppins(
                              textStyle:const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 0.6)
                              )
                            )
                          )
                        ],
                      )
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:20,left: 20),
                      child: Column(
                        children: [
                          Text(
                            "Total Price",
                            style: GoogleFonts.poppins(
                              textStyle:const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 0.8),
                              ),
                            ),
                          ),
                          Text(
                            "₹ 350",
                            style: GoogleFonts.poppins(
                              textStyle:const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left:20,top:10),
                      height: 50,
                      width: 160,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(103, 133, 74, 1),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child:Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:20,right:10),
                            child: Image.asset("lib/assets/shopping-bag.png"),
                          ),
                          Text(
                            "Add to card",
                            style: GoogleFonts.rubik(
                              textStyle:const TextStyle(
                                fontSize: 14.52,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          )
                        ],
                      )
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget{
  const LandingPage({super.key});

  @override
  State createState()=> _LandingPage();
}
class _LandingPage extends State{

  List plantImage=[
    "lib/assets/Group 5462.png",
    "lib/assets/Group 5462.png",
    "lib/assets/Group 5462.png",
    "lib/assets/Group 5462.png",
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  "lib/assets/Mask group.png",
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left:20,right: 10,top:20),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Find your",
                        style: GoogleFonts.poppins(
                          textStyle:const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                            color: Colors.black,
                          )
                        ),
                      ),
                      Text(
                        "favorite plants",
                        style: GoogleFonts.poppins(
                          textStyle:const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                            color: Colors.black,
                          )
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Image.asset("lib/assets/Group 5316.png"),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:20,right: 10),
                    child: Image.asset("lib/assets/Group 5486.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:10,right: 20),
                    child: Image.asset("lib/assets/Group 5486.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Image.asset("lib/assets/Group 5486.png"),
                  ),
                ],
              ),
            ),
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
            Padding(
              padding: const EdgeInsets.only(left:30),
              child: Text(
                "Indoor",
                style: GoogleFonts.poppins(
                  textStyle:const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(0,0,0,1),
                  )
                ),
              ),
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: plantImage.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(left:30,top:10),
                    height: 188,
                    width: 141,
                    decoration: BoxDecoration(
                      color:const Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: const [
                        BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.06),
                        offset: Offset(0, 8),
                        blurRadius: 19,
                        ),
                      ]
                    ),
                    child:Column(
                      children: [
                        GestureDetector(
                          onTap:() {
                            NavigateTodetailPage();
                          },
                          child: Image.asset("lib/assets/136722116_a0b8a27e-7bb5-4535-b3fe-d1dcdb5caf6d 1.png")
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:15),
                              child: Text(
                                "Snake Plant",
                                style: GoogleFonts.dmSans(
                                  textStyle:const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(48, 48, 48, 1),
                                  )
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "₹350",
                              style: GoogleFonts.poppins(
                                textStyle:const TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(62, 102, 24, 1)
                                ),
                              ),
                            ),
                            Image.asset("lib/assets/Group 5460.png"),
                          ],
                        )
                      ],
                    )
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:30,top:20),
              child: Text(
                "Outdoor",
                style: GoogleFonts.poppins(
                  textStyle:const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(0,0,0,1),
                  )
                ),
              ),
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: plantImage.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(left:30,top:10),
                    height: 188,
                    width: 141,
                    decoration: BoxDecoration(
                      color:const Color.fromRGBO(255, 255, 255, 1),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: const [
                        BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.06),
                        offset: Offset(0, 8),
                        blurRadius: 19,
                        ),
                      ]
                    ),
                    child:Column(
                      children: [
                        GestureDetector(
                          onTap:() {
                            NavigateTodetailPage();
                          },
                          child: Image.asset("lib/assets/136722116_a0b8a27e-7bb5-4535-b3fe-d1dcdb5caf6d 1.png")
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:15),
                              child: Text(
                                "Snake Plant",
                                style: GoogleFonts.dmSans(
                                  textStyle:const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(48, 48, 48, 1),
                                  )
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "₹350",
                              style: GoogleFonts.poppins(
                                textStyle:const TextStyle(
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(62, 102, 24, 1)
                                ),
                              ),
                            ),
                            Image.asset("lib/assets/Group 5460.png"),
                          ],
                        )
                      ],
                    )
                  );
                },
              ),
            ),
          ],
        )
      ),
    );
  }
  
  void NavigateTodetailPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context)=> const Detail(),
      ),
    );
  }
}
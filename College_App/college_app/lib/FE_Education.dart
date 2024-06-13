import 'package:college_app/Document.dart';
import 'package:college_app/Starting_pages/customtext.dart';
import 'package:flutter/material.dart';

class FEEducation extends StatefulWidget {
  const FEEducation({Key? key}) : super(key: key);

  @override
  State<FEEducation> createState() => _FEEducationState();
}

class _FEEducationState extends State<FEEducation> {

  final TextEditingController englishMarksController = TextEditingController();
  final TextEditingController mathsMarksController = TextEditingController();
  final TextEditingController scienceMarksController = TextEditingController();

  final TextEditingController physicsMarksController = TextEditingController();
  final TextEditingController chemMarksController = TextEditingController();
  final TextEditingController sciMarksController = TextEditingController();
  final TextEditingController mathMarksController = TextEditingController();
  final TextEditingController diplomaMarksController = TextEditingController();
  final TextEditingController cetMarksController = TextEditingController();
  final TextEditingController jeeMarksController = TextEditingController();
  

  void _navigateToNextScreen() {
   
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Documents(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        shadowColor: const Color.fromARGB(255, 136, 213, 212),
        elevation: 15,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        title: const Text("Education Details",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),),
        backgroundColor: const Color.fromARGB(255, 14, 154, 167),
      ),
      backgroundColor: const Color.fromARGB(255, 229, 253, 255),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              "About Education",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w800,
                color: Color.fromARGB(255, 5, 83, 83)
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "SSC Marks:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "1. English:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            MyTextField(
              dynamicController: englishMarksController,
              hintText: "Enter English marks...",
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),
            const Text(
              "2. Maths:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            MyTextField(
              dynamicController: mathsMarksController,
              hintText: "Enter Maths marks...",
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),
            const Text(
              "3. Science:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            MyTextField(
              dynamicController: scienceMarksController,
              hintText: "Enter Science marks...",
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            const Text(
              "HSC Marks:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "1. Physics:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            MyTextField(
              dynamicController: physicsMarksController,
              hintText: "Enter Physics marks...",
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),
            const Text(
              "2. Chemistry:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            MyTextField(
              dynamicController: chemMarksController,
              hintText: "Enter Chemistry marks...",
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),
            const Text(
              "3. Maths:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            MyTextField(
              dynamicController: mathMarksController,
              hintText: "Enter Maths marks...",
            ),
            const SizedBox(height: 10),
            const Text(
              "Diploma Marks:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const Text(
              '(If you are done HSC not Diploma then write NA)',
            ),
            const SizedBox(height: 10),
             MyTextField(
              dynamicController: diplomaMarksController,
              hintText: "Enter Diploma marks...",
            ),
            const SizedBox(height: 10),
            const Text(
              "CET Marks:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            MyTextField(
              dynamicController: cetMarksController,
              hintText: "Enter CET marks...",
            ),
            const SizedBox(height: 10),
            const Text(
              "JEE Marks:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            MyTextField(
              dynamicController: jeeMarksController,
              hintText: "Enter JEE marks...",
            ),

            const SizedBox(height: 25),
            Container(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: _navigateToNextScreen,
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll( Color.fromARGB(255, 116, 230, 240),),
                  fixedSize: const MaterialStatePropertyAll(Size(150, 50)),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45),
                    ),
                  ),
                ),
                child: const Text(
                  "Next",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

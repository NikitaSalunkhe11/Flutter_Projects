import 'package:college_app/FE_Education.dart';
import 'package:college_app/Starting_pages/customtext.dart';
import 'package:flutter/material.dart';

class FEForm extends StatefulWidget {
  const FEForm({Key? key}) : super(key: key);

  @override
  State<FEForm> createState() => _FEFormState();
}

class _FEFormState extends State<FEForm> {
  TextEditingController correspondenceAddressController =
      TextEditingController();
  TextEditingController permanentAddressController = TextEditingController();
  TextEditingController domicileController = TextEditingController();
  TextEditingController typeOfAddmissionController = TextEditingController();
  TextEditingController casteController = TextEditingController();
  TextEditingController annualIncomeController = TextEditingController();
  TextEditingController religionController = TextEditingController();
  TextEditingController placeOfBirthController = TextEditingController();
  TextEditingController previousCollegeController = TextEditingController();
  TextEditingController eligibilityNoController = TextEditingController();

  void _navigateToNextScreen() {
    // Implement logic to handle the entered details.
    // For now, it prints the entered details to the console.

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const FEEducation(),
      ),
    );

    print('Correspondence Address: ${correspondenceAddressController.text}');
    print('Permanent Address: ${permanentAddressController.text}');

    print('Domicile (State): ${domicileController.text}');
    print('Reserved Category: ${typeOfAddmissionController.text}');
    print('Caste: ${casteController.text}');
    print('Annual Income: ${annualIncomeController.text}');
    print('Religion: ${religionController.text}');
    print('Place of Birth: ${placeOfBirthController.text}');
    print('Previous College Attended: ${previousCollegeController.text}');
    print('Eligibility No.: ${eligibilityNoController.text}');
  }

  final TextEditingController branchselection = TextEditingController();
  final TextEditingController _yearController = TextEditingController();


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
        title: const Text("Additional Information",
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
              "Additional Details",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w800,
                color: Color.fromARGB(255, 5, 83, 83),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "1. Enter Academic Year:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MyTextField(
                dynamicController: _yearController,
                hintText: 'Enter academic year',
                
            ),
            const SizedBox(height: 10),
             const Text(
              "1. Select Branch:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            DropdownButtonFormField<String>(
              value: branchselection.text.isNotEmpty
                  ? branchselection.text
                  : null,
              items: [
                "Computer Science",
                "Electrical",
                "Electronics and Telecommunication",
                "Civil",
                "Mechanical",
                "Information Technology",
                "Artificial Intelligence",
              ].map((String category) {
                return DropdownMenuItem<String>(
                  value: category,
                  child: Text(category),
                );
              }).toList(),
              onChanged: (String? value) {
                if (value != null) {
                  setState(() {
                    branchselection.text = value;
                  });
                }
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Select Branch",
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 66, 64, 64),
                ),
                enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          gapPadding: 7,
          borderSide: const BorderSide(
              color: Color.fromARGB(255, 5, 118, 120),
              width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius:BorderRadius.circular(10),
          gapPadding: 7,
          borderSide: const BorderSide(
            color: Colors.pink, 
            width: 1.5
          ),
        )
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "1. Address for Correspondence:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            MyTextField(
              dynamicController: correspondenceAddressController,
              hintText: "Enter correspondence address...",
            ),
            const SizedBox(height: 10),
            const Text(
              "2. Permanent Address:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            MyTextField(
              dynamicController: permanentAddressController,
              hintText: "Enter permanent address...",
            ),
            const SizedBox(height: 10),
            const Text(
              "3. Domicile (State):",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            MyTextField(
              dynamicController: domicileController,
              hintText: "Enter domicile state...",
            ),
            const SizedBox(height: 10),
            const Text(
              "4. Reserved Category:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              value: typeOfAddmissionController.text.isNotEmpty
                  ? typeOfAddmissionController.text
                  : null,
              items: [
                "CAP",
                "MGMT",
                "Open",
                "OBC",
                "NT",
                "VJ",
                "SBC",
                "ESBC",
                "TFWS",
              ].map((String category) {
                return DropdownMenuItem<String>(
                  value: category,
                  child: Text(category),
                );
              }).toList(),
              onChanged: (String? value) {
                if (value != null) {
                  setState(() {
                    typeOfAddmissionController.text = value;
                  });
                }
              },
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Select Addmission Type",
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 66, 64, 64),
                ),
                enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          gapPadding: 7,
          borderSide: const BorderSide(
              color: Color.fromARGB(255, 5, 118, 120), width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius:BorderRadius.circular(10),
          gapPadding: 7,
          borderSide: const BorderSide(
            color: Colors.pink, 
            width: 1.5
          ),
        )
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "5. Annual Income (In Rs.):",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            MyTextField(
              dynamicController: annualIncomeController,
              keyboardType: TextInputType.number,
              hintText: "Enter annual income...",
            ),
            const SizedBox(height: 10),
            const Text(
              "6. Religion:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            MyTextField(
              dynamicController: religionController,
              hintText: "Enter religion...",
            ),
            const SizedBox(height: 10),
            const Text(
              "7. Place of Birth:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            MyTextField(
              dynamicController: placeOfBirthController,
              hintText: "Enter place of birth...",
            ),
            const SizedBox(height: 10),
            const Text(
              "8. Previous College Attended (HSC/Diploma/BE):",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            MyTextField(
              dynamicController: previousCollegeController,
              hintText: "Enter Name of previous college attended...",
            ),
            const SizedBox(height: 10),
            const Text(
              "9. Eligibility No:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            MyTextField(
              dynamicController: eligibilityNoController,
              hintText: "Enter eligibility number...",
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

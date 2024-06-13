import 'dart:typed_data';
import 'package:college_app/Payment.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class Documents extends StatefulWidget {
  const Documents({Key? key}) : super(key: key);

  @override
  State<Documents> createState() => _DocumentsState();
}

class _DocumentsState extends State<Documents> {

  Map<String, Uint8List?> selectedDocuments = {
    'Allotment Letter': null,
    'CET/GATE/JEE/AAT Score Card/Score sheet': null,
    'S.S.C Mark sheet': null,
    'S.S.C Board Certificate': null,
    'H.S.C Mark sheet': null,
    'H.S.C Board Certificate': null,
    'Diploma Mark sheet': null,
    'Diploma Provisional Certificate': null,
    'Degree Mark sheet': null,
    'Degree Provisional Certificate': null,
    'Leaving / T.C Certificate': null,
    'Migration Certificate (If Applicable)': null,
    'Age, Nationality, Domicile / Birth Certificate (If Applicable)': null,
    'Caste Certificate (If Applicable)': null,
    'Caste Validity Certificate (If Applicable)': null,
    'Non Creamy-layer (If Applicable)': null,
    'Income certificate (If Applicable)': null,
    'EWS certificate (If Applicable)': null,
    'Gap certificate (If Applicable)': null,
    'Aadhar Card': null,
    'Pan Card': null,
    'Student Passport Size Photo': null,
    'Confirmation Letter':null,
  };

  Map<String, String?> selectedFileNames = {
    'Allotment Letter': null,
    'CET/GATE/JEE/AAT Score Card/Score sheet': null,
    'S.S.C Mark sheet': null,
    'S.S.C Board Certificate': null,
    'H.S.C Mark sheet': null,
    'H.S.C Board Certificate': null,
    'Diploma Mark sheet': null,
    'Diploma Provisional Certificate': null,
    'Degree Mark sheet': null,
    'Degree Provisional Certificate': null,
    'Leaving / T.C Certificate': null,
    'Migration Certificate (If Applicable)': null,
    'Age, Nationality, Domicile / Birth Certificate (If Applicable)': null,
    'Caste Certificate (If Applicable)': null,
    'Caste Validity Certificate (If Applicable)': null,
    'Non Creamy-layer (If Applicable)': null,
    'Income certificate (If Applicable)': null,
    'EWS certificate (If Applicable)': null,
    'Gap certificate (If Applicable)': null,
    'Aadhar Card': null,
    'Pan Card': null,
    'Student Passport Size Photo': null,
    'Confirmation letter':null,
  };

  Future<void> _pickDocument(String documentName) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'jpg', 'jpeg', 'png'],
    );

    if (result != null && result.files.isNotEmpty) {
      setState(() {
        selectedDocuments[documentName] = result.files.first.bytes;
        selectedFileNames[documentName] = result.files.first.name;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: const Color.fromARGB(255, 136, 213, 212),
        elevation: 15,
        title: const Text("Documents",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        )),
        toolbarHeight: 80,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        backgroundColor: const Color.fromARGB(255, 14, 154, 167),
      ),
      backgroundColor: const Color.fromARGB(255, 229, 253, 255),
      body: SingleChildScrollView(
        child: 
       Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            const Text(
              "Upload Documents",
              style: TextStyle(
                fontSize: 23, 
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 6, 93, 96),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "(Documents must be in pdf, jpg, jpeg or png format)",
              style: TextStyle( 
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 252, 20, 59),
              ),
            ),
            const SizedBox(height: 20),
            for (var entry in selectedDocuments.entries)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Text(
                    entry.key,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            selectedFileNames[entry.key] ?? "No file selected",
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () => _pickDocument(entry.key),
                        icon: const Icon(Icons.attach_file),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 20),
                ],
              ),
            ElevatedButton(
    onPressed: () {
      // Implement logic to proceed to the next screen (Payment.dart)
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Payment()),
      );
    },
    style: ElevatedButton.styleFrom(
      // style: ButtonStyle(
      //             backgroundColor: const MaterialStatePropertyAll( Color.fromARGB(255, 116, 230, 240),),
      //             fixedSize: const MaterialStatePropertyAll(Size(150, 50)),
      backgroundColor:const  Color.fromARGB(255, 116, 230, 240),
      fixedSize: const Size(50, 40),
      
      shape: RoundedRectangleBorder(
        
        borderRadius: BorderRadius.circular(45),
      ),
    ),
              child: const Text(
                "Next",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
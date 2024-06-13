import 'package:college_app/BE_edu.dart';
import 'package:college_app/FE_Form.dart';
import 'package:college_app/SE_regular.dart';
import 'package:college_app/Status.dart';
import 'package:college_app/TE_edu.dart';
import 'package:college_app/profile.dart';
import 'package:flutter/material.dart';


class YearSelection extends StatefulWidget {
  const YearSelection({Key? key}) : super(key: key);

  @override
  State<YearSelection> createState() => yearSelectionState();

}
String? selectedYear;
class yearSelectionState extends State<YearSelection> {
  

  void _onYearSelected(String year) {
    setState(() {
      selectedYear = year;
    });
  }

  String? getSelectYear(){
    return selectedYear;
  }

  void _navigateToNextScreen() {
    if (selectedYear != null) {
      switch (selectedYear) {
        case "First Year":
          // Navigate to FEForm.dart for First Year
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>const  FEForm(),
            ),
          );
          break;
          case "Direct Second Year(Diploma)":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>const  FEForm(),
            ),
          );
        case "Second Year(Regular)":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>const  SE_regular(),
            ),
          );
          // Handle navigation for Second Year
          // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => SecondYearScreen()));
          break;
        case "Third Year":
          // Handle navigation for Third Year
          // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdYearScreen()));
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>const  TEEducation(),
            ),
          );
          break;
        case "Fourth Year":
          // Handle navigation for Fourth Year
          // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => FourthYearScreen()));
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>const  BEEducation(),
            ),
          );
          break;
        default:
          print("Please select a valid year before proceeding.");
      }
    } else {
      print("Please select a year before proceeding.");
    }
  }
  final List<IconData> bottomIcons = [
    Icons.home,
    Icons.notifications,
    Icons.person,
  ];

  final List<String> bottomIconNames = [
    'Home',
    'Status',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        shadowColor: const Color.fromARGB(255, 136, 213, 212),
        elevation: 15,
        title: const Text("Year Selection",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        backgroundColor: const Color.fromARGB(255, 14, 154, 167),
      ),
      backgroundColor: const Color.fromARGB(255, 229, 253, 255),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Choose Your Year",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w800,
                color: Color.fromARGB(255, 42, 42, 42),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            _buildYearCard("First Year"),
            _buildYearCard("Direct Second Year(Diploma)"),
            _buildYearCard("Second Year(Regular)"),
            _buildYearCard("Third Year"),
            _buildYearCard("Fourth Year"),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
            )
          ],
        ),
      ),
bottomNavigationBar: BottomAppBar(
  color: const Color.fromARGB(255, 14, 154, 167),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: List.generate(bottomIcons.length, (index) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(bottomIcons[index]),
            onPressed: () {
              if (bottomIconNames[index] == 'Home') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const YearSelection()),
                );
              } else if (bottomIconNames[index] == 'Status') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Status()),
                );
              } else if (bottomIconNames[index] == 'Profile') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profile()),
                );
              }
            },
            tooltip: bottomIconNames[index],
          ),
          Text(
            bottomIconNames[index],
            style: TextStyle(fontSize: 11),
          ),
        ],
      );
    }),
  ),
),
    );
  }

  Widget _buildYearCard(String year) {
    return Card(
      color: selectedYear == year ? const Color.fromARGB(255, 12, 175, 181) : Colors.white,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () {
          _onYearSelected(year);
        },
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Text(
              year,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: selectedYear == year
                    ? Colors.white
                    : const Color.fromARGB(255, 74, 73, 73),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

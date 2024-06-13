import 'package:flutter/material.dart';

class AdminPanel extends StatefulWidget {
  const AdminPanel({Key? key}) : super(key: key);

  @override
  State createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  final TextEditingController searchController = TextEditingController();
  final Map<int, Map<String, dynamic>> dummyData = {
    1: {
      'name': 'Sarthak Snadip Kachare',
      'Mobile Number': 8796211719,
      'Branch': 'CS',
      'Year': 'Third Year',
      'semester': 3,
      'Username': "Sarthak@1011",
      'Password': '123',
    },
    2: {
      'name': 'Abhishek',
      'Mobile Number': 7938590021,
      'Branch': 'E&TC',
      'Year': 'Fourth Year',
      'semester': 2,
      'Username': "Abhi",
      'Password': '123',
    },
    3: {
      'name': 'Amer',
      'Mobile Number': 8767409117,
      'Branch': 'E&TC',
      'Year': 'Fourth Year',
      'semester': 2,
      'Username': 'Amer',
      'Password': '123',
    },
    4: {
      'name': 'Vishal Bhosle',
      'Mobile Number': 8767409117,
      'Branch': 'E&TC',
      'Year': 'Fourth Year',
      'semester': 2,
      'Username': 'Amer',
      'Password': '123',
    },
    5: {
      'name': 'Aditya Ahire',
      'Mobile Number': 8767409117,
      'Branch': 'E&TC',
      'Year': 'Fourth Year',
      'semester': 2,
      'Username': 'Amer',
      'Password': '123',
    },
    // Add more dummy data as needed
  };

  List<int> filteredIds = [];
  String searchQuery = '';

  @override
  void initState() {
    super.initState();
    filteredIds = dummyData.keys.toList(); // Initialize with all IDs
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 4, 28, 47),
      body: Column(
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 15, left: 10),
                child: Text(
                  'Student Dashboard',
                  style: TextStyle(
                    color: Color.fromARGB(255, 248, 250, 251),
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    letterSpacing: 2,
                    decorationColor: Colors.blue,
                    shadows: [
                      BoxShadow(
                        color: Color.fromARGB(255, 30, 140, 231),
                        offset: Offset(0, 10),
                        blurRadius: 10,
                      )
                    ]
                  ),
                ),
              ),
              const Spacer(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, left: 40, right: 30),
                  child: TextField(
                    controller: searchController,
                    onChanged: (value) {
                      setState(() {
                        searchQuery = value;
                        filterData();
                      });
                    },
                    cursorColor: Colors.white,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      hintText: 'Search by name',
                      hintStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 12, 66, 110),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 16, 90, 150),
                          offset: Offset(0, 8),
                          blurRadius: 30,
                        ),
                      ],
                      color: Color.fromARGB(255, 2, 31, 56),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 17, 85, 141),
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(child: Text('ID', style: TextStyle(fontSize: 17, color: Colors.white))),
                              SizedBox(height: 10),
                              Expanded(child: Text('Name', style: TextStyle(fontSize: 17, color: Colors.white))),
                              SizedBox(height: 10),
                              Expanded(child: Text('Mobile Number', style: TextStyle(fontSize: 17, color: Colors.white))),
                              SizedBox(height: 10),
                              Expanded(child: Text('Branch', style: TextStyle(fontSize: 17, color: Colors.white))),
                              SizedBox(height: 10),
                              Expanded(child: Text('Year', style: TextStyle(fontSize: 17, color: Colors.white))),
                              SizedBox(height: 10),
                              Expanded(child: Text('Semester', style: TextStyle(fontSize: 17, color: Colors.white))),
                              SizedBox(height: 10),
                              Expanded(child: Text('Username', style: TextStyle(fontSize: 17, color: Colors.white))),
                              SizedBox(height: 10),
                              Expanded(child: Text('Password', style: TextStyle(fontSize: 17, color: Colors.white))),
                              SizedBox(height: 15),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Column(
                          children: filteredIds.map((int studentId) {
                            final Map<String, dynamic>? studentInfo = dummyData[studentId];
                            return Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    // Handle row tap
                                    // NavigateToNextPage();
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          studentId.toString(),
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          studentInfo?['name'] ?? '',
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          studentInfo?['Mobile Number']?.toString() ?? '',
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          studentInfo?['Branch'] ?? '',
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          studentInfo?['Year'] ?? '',
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          studentInfo?['semester']?.toString() ?? '',
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          studentInfo?['Username']?.toString() ?? '',
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          studentInfo?['Password']?.toString() ?? '',
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding:  EdgeInsets.only(top:8,bottom: 8),
                                  child:  Divider( // Add Divider between rows
                                    height: 1,
                                    color: Color.fromARGB(255, 33, 138, 224),
                                  ),
                                ),
                              ],
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void filterData() {
    filteredIds = dummyData.keys.where((id) {
      final studentInfo = dummyData[id];
      return studentInfo?['name']?.toLowerCase().contains(searchQuery.toLowerCase()) ?? false;
    }).toList();
  }
}

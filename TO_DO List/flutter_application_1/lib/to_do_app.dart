// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';


class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});

  @override
  State<ToDoApp> createState() => _ToDoApp();
}

Future<void> insertTODOData(ToDoModelClass obj) async {
  final localDB = await database;
  localDB.insert(
    'tasktable',
    obj.TODOModelMap(),  
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
  print(obj);
}

class _ToDoApp extends State<ToDoApp> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descripionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  void showBottomSheet(bool doedit, [ToDoModelClass? todoModelObj]) {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ), 
        ),
        context: context,
        builder: (BuildContext context) {
          return Padding( 
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              //to handle Overlapping
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "create Task",
                  style: GoogleFonts.quicksand(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Title",
                      style: GoogleFonts.quicksand(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(0, 139, 148, 1),
                      ),
                    ),
                    TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.red),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(0, 139, 148, 1))),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Description",
                      style: GoogleFonts.quicksand(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(0, 139, 148, 1),
                      ),
                    ),
                    TextField(
                      controller: descripionController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.red),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(0, 139, 148, 1))),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Date",
                      style: GoogleFonts.quicksand(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(0, 139, 148, 1),
                      ),
                    ),
                    TextField(
                      controller: dateController,
                      readOnly: true,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.calendar_month)),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(color: Colors.red),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(0, 139, 148, 1))),
                      ),
                      onTap: () async {
                        DateTime? pickeddate = await showDatePicker(
                            context: context,
                            firstDate: DateTime(2024),
                            lastDate: DateTime(2025));
                        String formatedDate =
                            DateFormat.yMMMd().format(pickeddate!);

                        setState(() {
                          dateController.text = formatedDate;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 300,
                  //color:const  Color.fromRGBO(0,139,148,1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
                      ),
                      onPressed: () {
                        doedit ? submit(doedit, todoModelObj) : submit(doedit);
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Submit",
                        style: GoogleFonts.quicksand(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      )),
                )
              ],
            ),
          );
        });
  }

  List<Color> colorList = const [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
    Color.fromRGBO(250, 232, 232, 1),
  ];
  List<ToDoModelClass> cardList = [
    ToDoModelClass(
        title: "Lorem Ipsum is simply setting industry",
        descripion:
            "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
        date: "11 oct 2022"),
    // ToDoModelClass(title: "Sonya",descripion: "Nanya",date: "10 april 2002"),
  ];

  void submit(bool doedit, [ToDoModelClass? toDoModelObj]) {
    if (titleController.text.trim().isNotEmpty &&
        descripionController.text.trim().isNotEmpty &&
        dateController.text.trim().isNotEmpty) {
      if (!doedit) {
        setState(() {
          // cardList.add(
          //   ToDoModelClass(
          //       title: titleController.text.trim(),
          //       descripion: descripionController.text.trim(),
          //       date: dateController.text.trim()),
          // );
          insertTODOData(
            ToDoModelClass(
                title: titleController.text.trim(),
                descripion: descripionController.text.trim(),
                date: dateController.text.trim()),
          );
        });
      } else {
        setState(() {
          toDoModelObj!.date = dateController.text.trim();
          toDoModelObj.title = titleController.text.trim();
          toDoModelObj.descripion = descripionController.text.trim();
        });
      }
    }
    clearController();
  }

  void clearController() {
    titleController.clear();
    descripionController.clear();
    dateController.clear();
  }

  void removeTasks(ToDoModelClass toDoModelObj) {
    setState(() {
      cardList.remove(toDoModelObj);
    });
  }

  void editTask(ToDoModelClass toDoModelObj) {
    titleController.text = toDoModelObj.title;
    descripionController.text = toDoModelObj.descripion;
    dateController.text = toDoModelObj.date;

    showBottomSheet(true, toDoModelObj);
  }

  @override
  void dispose() {
    super.dispose();
    titleController.dispose();
    dateController.dispose();
    descripionController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
        title: Text(
          "To-Do App",
          style: GoogleFonts.quicksand(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: cardList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: colorList[index % colorList.length],
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 190, 187, 187),
                        offset: Offset(5, 5),
                        blurRadius: 4,
                        blurStyle: BlurStyle.normal,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(children: [
                            //mainAxisAlignment: MainAxisAlignment.center,
                            const Padding(
                                padding: EdgeInsets.only(left: 100, top: 15)),
                            Container(
                              height: 50,
                              width: 50,
                              //color: Colors.white,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 218, 215, 215),
                                    offset: Offset(3, 3),
                                    blurRadius: 2,
                                  )
                                ],
                              ),
                              //radius: 25.0,

                              child: Image.asset("lib/assets/Group 42.png"),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                          ]),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 7,
                                ),
                                //Text("Lorem Ipsum is simply setting industry",
                                Text(
                                  cardList[index].title,
                                  style: GoogleFonts.quicksand(
                                    color: const Color.fromARGB(255, 21, 18, 8),
                                    fontWeight: FontWeight.w800,
                                    fontSize: 15,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                //Text("Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                //style: GoogleFonts.getFont('quicksand'),
                                Text(
                                  cardList[index].descripion,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            cardList[index].date,
                            style: const TextStyle(
                              color: Color.fromRGBO(162, 161, 161, 1),
                              fontSize: 14,
                            ),
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  editTask(cardList[index]);
                                },
                                child: const Icon(
                                  Icons.edit,
                                  color: Color.fromARGB(255, 7, 142, 137),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  removeTasks(cardList[index]);
                                },
                                child: const Icon(
                                  Icons.delete_outline,
                                  color: Color.fromARGB(255, 7, 142, 137),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  )),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
        onPressed: () {
          clearController();
          showBottomSheet(false);
          //showModalBottomSheet(true,ToDoModelClass(titleController.text, descripionController.text, dateController.text));
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

class ToDoModelClass {
  String title;
  String descripion;
  String date;

  ToDoModelClass({
    required this.title,
    required this.descripion,
    required this.date,
  });

  Map<String , dynamic> TODOModelMap(){
    return
    {
      title:'title',
      descripion:'description',
      date:'date',
    };
  }
}

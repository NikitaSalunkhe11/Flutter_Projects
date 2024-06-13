import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class to_do_list extends StatefulWidget {
  const to_do_list({super.key});

  @override
  State<to_do_list> createState() => _to_do_list();
}

class ModelClass{

  String title;
  String descripion;
  String date;

  ModelClass({
    required this.title,
    required this.descripion,
    required this.date,
  });
}

class _to_do_list extends State<to_do_list> {

  // int count = 0;
  // String title1="" ;
  // String descripion1="";
  // String date1="";

  
  List<Color> colorList = const [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
    Color.fromRGBO(250, 232, 232, 1),
  ];
  
  TextEditingController titletext = TextEditingController();
  TextEditingController descripiontext = TextEditingController();
  TextEditingController datetext = TextEditingController();

  List titleList=[];
  List descripionList=[];
  List dateList=[];

  List<ModelClass> cardList=[
    // ModelClass("Nikita","Sarthak","11 oct 2002"),
    // ModelClass("Sonya","Nanya","10 april 2002"),
  ];


  void showmodel() {
   // 
    showModalBottomSheet(
        //isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Center(
                  child: Text(
                    "Create Task",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "title",
                  style: TextStyle(
                    //backgroundColor: Color.fromRGBO(0, 139, 148, 1),
                    color: Color.fromRGBO(0, 139, 148, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                TextField(
                  cursorColor: const Color.fromARGB(255, 36, 35, 35),
                  controller: titletext,
                  decoration: const InputDecoration(
                    hintText: 'Enter title',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(
                          color: Colors.red,
                          width: 1.5,
                          style: BorderStyle.solid),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                          style: BorderStyle.solid,
                          width: 1.5,
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Descripion",
                  style: TextStyle(
                    //backgroundColor: Color.fromRGBO(0, 139, 148, 1),
                    color: Color.fromRGBO(0, 139, 148, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                TextField(
                  controller: descripiontext,
                  cursorColor: const Color.fromARGB(255, 36, 35, 35),
                  decoration: const InputDecoration(
                    hintText: 'Enter Description',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(
                          color: Colors.red,
                          width: 1.5,
                          style: BorderStyle.solid),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                          style: BorderStyle.solid,
                          width: 1.5,
                        )),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Date",
                  style: TextStyle(
                    //backgroundColor: Color.fromRGBO(0, 139, 148, 1),
                    color: Color.fromRGBO(0, 139, 148, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                TextField(
                  controller: datetext,
                  cursorColor: const Color.fromARGB(255, 36, 35, 35),
                  decoration: const InputDecoration(
                    suffixIcon: Icon(Icons.calendar_month_outlined),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(
                          color: Colors.red,
                          width: 1.5,
                          style: BorderStyle.solid),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                          style: BorderStyle.solid,
                          width: 1.5,
                        )),
                  ),
                  
                  onTap: () async {
                    DateTime? pickeddate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2024),
                      lastDate: DateTime(2025),
                    );
                    String formatedDate =
                        DateFormat.yMMMd().format(pickeddate!);
                    setState(() {
                      datetext.text = formatedDate;
                    });
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
                    ),
                    onPressed: () {
                      //Navigator.pop(context,true);
                      //increment();
                      setState(() {
                        //print("object");
                        String val1 = titletext.text;
                        String val2 = descripiontext.text;
                        String val3 = datetext.text;

                        //ModelClass obj=ModelClass(val1,val2,val3);
                        cardList.add(ModelClass(title:val1,descripion:val2,date:val3));
                        // print(cardList[index].title);
                        // print(obj.descripion);
                        // print(obj.date);
                        // titleList.add(val1);
                        // descripionList.add(val2);
                        // dateList.add(val3);
                      });
                      Navigator.of(context).pop();
                      titletext.clear();
                      descripiontext.clear();
                      datetext.clear();
                      //selectcolor();
                    },
                    child: const Text("Submit",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400
                            // backgroundColor: Color.fromRGBO(0, 139, 148, 1),

                            )),
                  ),
                )
              ],
            ),
          );
        });
  }



  @override
  Widget build(BuildContext context) {
    //ModelClass obj= ModelClass(title1,descripion1,date1);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 34, 131, 134),
        title: const Text(
          "To-do List",
          style: TextStyle(
            color: Color.fromRGBO(254, 252, 252, 1),
            fontWeight: FontWeight.w800,
            fontSize: 20,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: titleList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                  //color: colorList[index],
                  margin: const EdgeInsets.all(20),
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
                          Column(
                            children: [
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

                              child: Image.asset("assets/Images/Group 42.png"),
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
                                  height: 5,
                                ),
                                //Text("Lorem Ipsum is simply setting industry",
                                Text(cardList[index].title                            //style: GoogleFonts.lato(color: const Color.fromARGB(255, 21, 18, 8)),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                //Text("Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                //style: GoogleFonts.getFont('quicksand'),
                                Text(
                                  cardList[index].descripion
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
                                  
                                },
                                child: IconButton(
                                  icon:const Icon(
                                    Icons.edit,
                                    color: Color.fromARGB(255, 7, 142, 137),
                                  
                                  ),
                                  onPressed: () { 
                                      
                                  },
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  
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
        onPressed: () {
          showmodel();
        },
        //Icon(Icons.add),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/AmPm.dart';
// import 'package:flutter_application_1/ClockApp.dart';
// import 'package:flutter_application_1/Hours.dart';
// import 'package:flutter_application_1/Minutes.dart';
// import 'package:flutter_application_1/countdown.dart';
// import 'package:flutter_application_1/setstopwatch.dart';
// import 'package:numberpicker/numberpicker.dart';
// import 'main.dart';

// class MyTimer extends StatefulWidget {
//   const MyTimer({Key? key}) : super(key: key);

//   @override
//   State createState() => _MyTimerState();
// }
//  //TimeOfDay selectedTime = TimeOfDay.now();
//  List<TimeValueClass> timedata = [
//   TimeValueClass(hour: "00", min: "10", sec: "00", label: 'Boil egg'),
//  ];

// int localid=1;

//   dynamic i;

// class _MyTimerState extends State<MyTimer> {

//   final TextEditingController _hourcontroller = TextEditingController();
//   final TextEditingController _mincontroller = TextEditingController();
//   final TextEditingController _seccontroller = TextEditingController();
//   final TextEditingController _labelcontroller = TextEditingController();
  

//   Color timeFormatColor1 =  const Color.fromARGB(255, 6, 65, 114);
//   Color timeFormatColor2 =  const Color.fromARGB(255, 6, 65, 114); 

// //int currentHour = 0;
// //int currentMin = 0;
//   var currentSec = 0;

//   var currentHour = 0;
//   var currentMin = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.bottomCenter,
//                 end: Alignment.topCenter,
//                 colors: [
//                   Colors.black.withOpacity(1.0),
//                   const Color.fromARGB(255, 8, 98, 171)
//                       .withOpacity(1.0), // Adjust opacity as needed
//                 ],
//               ),
//             ),
//           ),
//           Column(
//             children: [
//               const Padding(
//                 padding: EdgeInsets.only(top: 50),
//                 child: Center(
//                   child: Text(
//                     "Timer",
//                     style: TextStyle(
//                       fontSize: 30,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                     height: 200,
//                     width: 400,
//                     decoration: const BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(20)),
//                      // color: Color.fromARGB(255, 2, 45, 65),
//                     ),
//                     child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           NumberPicker(
//                             minValue: 0,
//                             maxValue: 23,
//                             value: currentHour,
//                             zeroPad: true,
//                             infiniteLoop: true,
//                             itemWidth: 80,
//                             itemHeight: 60,
//                             selectedTextStyle: const TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 20,
//                                 color: Colors.white),
//                             decoration: const BoxDecoration(
//                               border: Border.symmetric(
//                                 horizontal: BorderSide(color: Colors.white),
//                               ),
//                             ),
//                             textStyle: const TextStyle(
//                               color: Colors.grey,
//                               fontSize: 20,
//                             ),
//                             onChanged: (value) {
//                               setState(() {
//                                 currentHour = value;
//                               });
//                             },
//                           ),
              
//                           NumberPicker(
//                             minValue: 0,
//                             maxValue: 59,
//                             value: currentMin,
//                             zeroPad: true,
//                             infiniteLoop: true,
//                             itemWidth: 80,
//                             itemHeight: 60,
//                             onChanged: (value) {
//                               setState(() {
//                                 currentMin = value;
//                               });
//                             },
//                             selectedTextStyle: const TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 20,
//                                 color: Colors.white),
//                             decoration: const BoxDecoration(
//                                 border: Border.symmetric(
//                                     horizontal:
//                                         BorderSide(color: Colors.white))),
//                             textStyle: const TextStyle(
//                               color: Colors.grey,
//                               fontSize: 20,
//                             ),
//                           ),
              
//                           NumberPicker(
//                             minValue: 0,
//                             maxValue: 59,
//                             value: currentSec,
//                             zeroPad: true,
//                             infiniteLoop: true,
//                             itemWidth: 80,
//                             itemHeight: 60,
//                             selectedTextStyle: const TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 20,
//                                 color: Colors.white),
//                             decoration: const BoxDecoration(
//                               border: Border.symmetric(
//                                 horizontal: BorderSide(color: Colors.white),
//                               ),
//                             ),
//                             textStyle: const TextStyle(
//                               color: Colors.grey,
//                               fontSize: 20,
//                             ),
//                             onChanged: (value) {
//                               setState(() {
//                                 currentSec = value;
//                               });
//                             },
//                           ),
//                         ]),
//                   ),
//               Row(
//                 children: [
//                   const Padding(
//                     padding: EdgeInsets.only(left: 10),
//                     child: Text(
//                       "Frequently used Timers",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                   const Spacer(),
//                   TextButton(
//                     onPressed: (){
//                       _showAddTextBottomSheet(context);
//                     },
//                     child: const Padding(
//                       padding: EdgeInsets.only(right: 10),
//                       child: Text(
//                         "add",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height:20,
//               ),
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: timedata.length,
//                   itemBuilder: (context,index){
//                     i=index;
//                   return Column(
//                     children: [
//                       GestureDetector(
//                           onLongPress: () {
//                             BottomSheetTimerDelete(timedata[index]);
//                           },
//                           onTap:(){
                            
//                             changeContainerColor(context,index);
//                             setState(() {
//                               currentHour=int.parse(timedata[index].hour);
//                               currentMin=int.parse(timedata[index].min);
//                               currentSec=int.parse(timedata[index].sec);

//                             });
//                           },
//                       child:Container(
//                         height: 70,
//                         width: 350,
//                         decoration: BoxDecoration(
//                           border: Border.all(color: _forbordercolor,width: 2),
//                           color: const Color.fromARGB(255, 6, 65, 114),
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: Row(
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(left:20),
//                               child: Text(
//                                 timedata[index].label,
//                                 //textAlign: TextAlign.start,
//                                 style:const TextStyle(
//                                   color: Color.fromARGB(255, 195, 232, 240),
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 40),
//                               child: Row(
//                                 children: [
//                                   Text(
//                                     timedata[index].hour,
//                                     //textAlign: TextAlign.end,
//                                     style: const TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.w500,
//                                     ),
//                                   ),
//                                   const Text(":",
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 20,
//                                       fontWeight: FontWeight.w500,
//                                   ),),
//                                   Text(
//                                     timedata[index].min,
//                                     //textAlign: TextAlign.end,
//                                     style: const TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.w500,
//                                     ),
//                                   ),
//                                   const Text(":",
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 20,
//                                       fontWeight: FontWeight.w500,
//                                   ),),
//                                   Text(
//                                     timedata[index].sec,
//                                     //textAlign: TextAlign.end,
//                                     style: const TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.w500,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             const Spacer(),
//                             TextButton(
//                               onPressed: (){
//                                 navigatetocountdownscreen(index);
//                               },
//                               child: const Text("Start",
//                                 style: TextStyle(
//                                   color: Colors.pink,
//                                   fontSize: 20,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       ),
//                       const SizedBox(height: 10,), 
//                     ],
//                   );
//                   }
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//       bottomNavigationBar: NavigationBar(
//           indicatorColor: Colors.blue,
//           backgroundColor: Colors.black,
//           destinations: [
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 GestureDetector(
//                   onTap:nagivatetoAlarmPage,
//                   child: const Icon(
//                     Icons.alarm,
//                     color: Colors.white,
//                   ),
//                 ),
//                 const Text(
//                   "Alarm",
//                   style: TextStyle(
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 GestureDetector(
//                   onTap: navigatetonextPage,
//                   child: const Icon(
//                     Icons.timer,
//                     color: Colors.white,
//                   ),
//                 ),
//                 const Text(
//                   "Stopwatch",
//                   style: TextStyle(
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//             const Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(
//                   Icons.timelapse,
//                   color: Colors.white,
//                 ),
//                 Text(
//                   "Timer",
//                   style: TextStyle(
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
    
//           ]
//       ),
//     );
//   }
//   Color _forcolor = Colors.blue;

//   void _showAddTextBottomSheet(BuildContext context,[TimeValueClass? timeValueClassobj]) {
//     showModalBottomSheet(
//       isScrollControlled: true,
//       isDismissible: true,
//       context: context,
//       builder: (BuildContext context) {
        
//             return Padding(
//               padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
//               child: GestureDetector(
//                 onTap: onSelected,
//                 child: Container(
                   
//                   decoration: BoxDecoration(
                          
//                           borderRadius: const BorderRadius.only(
//                             topLeft: Radius.circular(20),
//                             topRight: Radius.circular(20),
//                           ),
//                           border: Border.all(color:_forcolor, width: 2),
//                           gradient: LinearGradient(
//                             end: Alignment.bottomCenter,
//                             begin: Alignment.topCenter,
//                             colors: [
//                               Colors.black.withOpacity(1.0),
//                               const Color.fromARGB(255, 8, 98, 171).withOpacity(1.0),
//                             ],
//                           ),
//                         ),
                  
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Container(
                        
//                         decoration: BoxDecoration(
//                           borderRadius: const BorderRadius.only(
//                             topLeft: Radius.circular(20),
//                             topRight: Radius.circular(20),
//                           ),
//                           border: Border.all(color: Colors.blue, width: 2),
//                           gradient: LinearGradient(
//                             end: Alignment.bottomCenter,
//                             begin: Alignment.topCenter,
//                             colors: [
//                               Colors.black.withOpacity(1.0),
//                               const Color.fromARGB(255, 8, 98, 171).withOpacity(1.0),
//                             ],
//                           ),
//                         ),
//                       ),
//                       Column(
//                        // mainAxisSize: MainAxisSize.max,
//                         children: [
//                           Padding(
//                             padding:const  EdgeInsets.only(top: 20, left: 20, right: 20),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 GestureDetector(
//                                   onTap: () {
//                                     Navigator.pop(context);
//                                   },
//                                   child: const Text(
//                                     "Cancel",
//                                     style: TextStyle(
//                                       fontSize: 20,
//                                       color: Colors.pink,
//                                     ),
//                                   ),
//                                 ),
//                                 const Text(
//                                   "New Timer",
//                                   style: TextStyle(
//                                     fontSize: 25,
//                                     fontWeight: FontWeight.w500,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                                 GestureDetector(
//                                   onTap: () {
//                                     setState(() {
//                                     //submit(timeValueClassobj!);
//                                     TimeValueClass timeValueClassobj1 = TimeValueClass(
//                                       hour: _hourcontroller.text,
//                                       min: _mincontroller.text,
//                                       sec: _seccontroller.text,
//                                       label: _labelcontroller.text,
//                                     );
//                                       fillvalueinList(timeValueClassobj1);
//                                       });
//                                     Navigator.pop(context);
//                                   },
//                                   child: const Text(
//                                     "Done",
//                                     style: TextStyle(
//                                       fontSize: 20,
//                                       color: Colors.pink,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const SizedBox(
//                             height: 20,
//                           ),
//                           Container(
//                             height: 250,
//                             width: 350,
//                             decoration: BoxDecoration(
//                               color: const Color.fromARGB(255, 4, 6, 9),
//                               borderRadius: BorderRadius.circular(20),
//                               boxShadow: const [
//                                 BoxShadow(
//                                   color: Color.fromARGB(255, 24, 104, 179),
//                                   blurStyle: BlurStyle.outer,
//                                   offset: Offset(-5, 5),
//                                   blurRadius: 30,
//                                 )
//                               ],
//                             ),
//                             child:  Column(
//                               //mainAxisAlignment: MainAxisAlignment.start,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 const SizedBox(
//                                   height: 20,
//                                 ),
//                                 const Text(
//                                   "Set Time",
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   height: 20,
//                                 ),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     Column(
//                                       children: [
//                                         const Text("Hour",
//                                         textAlign: TextAlign.center,
//                                         style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 20,
//                                           fontWeight: FontWeight.w500,
//                                         ),
//                                         ),
//                                         const SizedBox(height: 5,),
//                                         Container(
//                                           width: 70,
//                                           child:  TextField(
//                                              style: const TextStyle(
//                                               color: Colors.white,
//                                               fontWeight: FontWeight.w700,
//                                               fontSize: 20,
//                                              ),
//                                             controller: _hourcontroller,
//                                             keyboardType: TextInputType.number,
//                                             decoration: const InputDecoration(
//                                               hintText: '00',
//                                               hintStyle: TextStyle(
//                                                 color: Colors.white,
//                                                 fontSize: 20,
//                                               ),
//                                               enabledBorder: OutlineInputBorder(
//                                                 borderRadius: BorderRadius.all(Radius.circular(8.0)),
//                                                 borderSide: BorderSide(color: Colors.blue,width:2.0),
//                                               ),
//                                               focusedBorder: OutlineInputBorder(
//                                                 borderRadius: BorderRadius.all(Radius.circular(8.0)),
//                                                 borderSide: BorderSide(color: Colors.pink,width: 2),
//                                               )
//                                             ),
//                                           ),
//                                         )
//                                       ],
//                                     ),
//                                     Column(
//                                       children: [
//                                         const Text("min",
//                                         textAlign: TextAlign.center,
//                                         style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 20,
//                                           fontWeight: FontWeight.w500,
//                                         ),
//                                         ),
//                                         const SizedBox(height: 5,),
//                                         Container(
//                                           width: 70,
//                                           child: TextField(
//                                             style:const TextStyle(
//                                               color: Colors.white,
//                                               fontWeight: FontWeight.w700,
//                                               fontSize: 20,
//                                              ),
//                                             controller: _mincontroller,
//                                             keyboardType: TextInputType.number,
//                                             decoration: const InputDecoration(
//                                               hintText: '00',
//                                               hintStyle: TextStyle(
//                                                 color: Colors.white,
//                                                 fontSize: 20,
//                                               ),
//                                               enabledBorder: OutlineInputBorder(
//                                                 borderRadius: BorderRadius.all(Radius.circular(8.0)),
//                                                 borderSide: BorderSide(color: Colors.blue,width:2)
//                                               ),
//                                                focusedBorder: OutlineInputBorder(
//                                                 borderRadius: BorderRadius.all(Radius.circular(8.0)),
//                                                 borderSide: BorderSide(color: Colors.pink,width: 2),
//                                               ),
//                                             ),
//                                           ),
//                                         )
//                                       ],
//                                     ),
//                                     Column(
//                                       children: [
//                                         const Text("sec",
//                                         textAlign: TextAlign.center,
//                                         style: TextStyle(
//                                           color: Colors.white,
//                                           fontSize: 20,
//                                           fontWeight: FontWeight.w500,
//                                         ),),
//                                         const SizedBox(height: 5,),
//                                         Container(
//                                           width: 70,
//                                           child: TextField(
//                                             style:const TextStyle(
//                                               color: Colors.white,
//                                               fontWeight: FontWeight.w700,
//                                               fontSize: 20,
//                                              ),
//                                              keyboardType: TextInputType.number,
//                                             controller: _seccontroller,
//                                             decoration: const InputDecoration(
//                                               hintText: '00',
//                                               hintStyle: TextStyle(
//                                                 color: Colors.white,
//                                                 fontSize: 20,
//                                               ),
//                                               enabledBorder: OutlineInputBorder(
//                                                 borderRadius: BorderRadius.all(Radius.circular(8.0)),
//                                                 borderSide: BorderSide(color: Colors.blue,width:2)
//                                               ),
//                                                focusedBorder: OutlineInputBorder(
//                                                 borderRadius: BorderRadius.all(Radius.circular(8.0)),
//                                                 borderSide: BorderSide(color: Colors.pink,width: 2),
//                                               )
//                                             ),
//                                           ),
//                                         )
//                                       ],
//                                     )
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(7.0),
//                             child: TextField(
//                               controller: _labelcontroller,
//                               style: const TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                               decoration: InputDecoration(
//                                 hintText: "Enter Alarm Name" ,
//                                 hintStyle: const TextStyle(
//                                   color: Colors.white
//                                 ),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: const BorderSide(color: Color.fromARGB(255, 116, 184, 239),width: 3),
//                                 ),
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             );
//       },
//     );
//   }

//   void nagivatetoAlarmPage(){
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context)=>const Alarm(),
//       )
//     );
//   }
//   void navigatetonextPage() {
//     Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => const SetStopwatch(),
//         )
//       );
//   }
//   void fillvalueinList(TimeValueClass? timeValueClassobj) async{
//     await insertTime(
//       TimeValueClass(
//             hour: _hourcontroller.text.trim(),
//             min: _mincontroller.text.trim(),
//             sec: _seccontroller.text.trim(),
//             label: _labelcontroller.text.trim(),
//             id:localid++,
//           ),
//     );
//     await updateList();
//     if(_hourcontroller.text.trim().isNotEmpty &&
//     _mincontroller.text.trim().isNotEmpty &&
//     _seccontroller.text.trim().isNotEmpty &&
//     _labelcontroller.text.trim().isNotEmpty){

//       setState(() {
//         timedata.add(
//           TimeValueClass(
//             hour: _hourcontroller.text.trim(),
//             min: _mincontroller.text.trim(),
//             sec: _seccontroller.text.trim(),
//             label: _labelcontroller.text.trim(),
//           ),
//         );
//       });
//     }
//     clearController();


//     //  print("task submitted");
//     // await insertTask(Task(task: title, explanation: description, date: date , id: localId++)); //id: localId++
//     // await updateList();
//     // setState(() {});

//     // for (int i = 0; i < taskCard.length; i++) {
//     //   print(taskCard);
//     // }
//     // titleText = TextEditingController();
//     // descriptionText = TextEditingController();
//   }

//   void clearController(){
//     _hourcontroller.clear();
//     _mincontroller.clear();
//     _seccontroller.clear();
//     _labelcontroller.clear();
//   }

//   void removeEntry(TimeValueClass timeValueClassobj){
//     setState(() {
//       timedata.remove(timeValueClassobj);
//     });
//   }

//   void BottomSheetTimerDelete(TimeValueClass timeValueClassobj){
//   showModalBottomSheet(
//     context: context,
//     builder: (context) {
//       return Container(
//         height: 50,
//         width: double.maxFinite,
//         color: Colors.black,
//         child: Center(

//           child: GestureDetector(
            
//             onTap:() {
//               setState(() {
//                 // timedata.remove(timedata[index]);
//                 // alarmNamedata.remove(alarmNamedata[index]);

//                 removeEntry(timeValueClassobj);
//               });
              
//             } ,
//             child:const Icon(
//               Icons.delete,
//               color: Colors.white,
//               ),
//           ),

//         ),

//       );
//     },
//   );
//   }
  
//   void  onSelected() {
//     setState(() {
//       if(_forcolor == Colors.blue){
//       _forcolor=Colors.pink;
//     }else{
//       _forcolor = Colors.blue;
//     }
//     });
//   }
  
//   Color _forbordercolor =  const Color.fromARGB(255, 63, 158, 235);

//   void changeContainerColor(BuildContext context,int index) {
    
//     (context){
//     if(_forbordercolor == const Color.fromARGB(255, 63, 158, 235)){
//       _forbordercolor = Colors.white;
//     }else{
//       _forbordercolor=const Color.fromARGB(255, 63, 158, 235);
//     }
//     };
//   }
  
//   void navigatetocountdownscreen(int i) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context)=> CountdownScreen(hours: timedata[i].hour, minutes: timedata[i].min, seconds: timedata[i].sec),
//       )
//     );
//   }
// }
// class TimeValueClass{
//    String hour;
//    String min;
//    String sec;
//    String label;
//    int? id;

//   TimeValueClass({
//     this.id,
//     required this.hour,
//     required this.min,
//     required this.sec,
//     required this.label,
//   });

//   Map<dynamic, String> timeValueClassMap(){
//     return{
//       hour:'hour',
//       min:'min',
//       sec:'sec',
//       label:'label',
//       id:'id',
//     };
//   }
// }

import 'package:flutter/material.dart';

class Assignment extends StatefulWidget{
  const Assignment({super.key});

  @override
  State<Assignment> createState() => netflix_page();
}

class netflix_page extends State<Assignment>{

  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(foregroundColor: Color.fromARGB(255, 248, 3, 15),
        title: const Text("NETFLIX",
        
        style: TextStyle(
          fontSize: 40,
          fontStyle:FontStyle.normal,
          fontWeight: FontWeight.bold,

        ),),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SizedBox(
        height: double.infinity,
        child:SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              children: [
                Text(" TV Shows     Movies     Series     Recently Added     MyList",
                style: TextStyle(
                  color:Colors.white, 
                ),
              ),
              Spacer(),
              Icon(Icons.search,
              color: Colors.white),
              Icon(Icons.account_circle,
              color: Colors.white),
              
              ],
            ),
            const Row(
              children: [
                Text(" __________",
                style: TextStyle(
                  color: Colors.white,
                ),),
              ],
            ),
            const SizedBox(
              height:10,
              width: double.infinity,
            ),
            const Row(  
              children: [
                Text(" TV Comedies",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:
            Row(
              children: [
                SizedBox(
                  height: 300,
                  width: 200,
                  child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStIYDTFkPwMwG2TcSKBg9GlmS2brfSl0yD0w&usqp=CAU"),
                ),
                //const Padding(padding: EdgeInsets.all(0.0)),
                SizedBox(
                  height: 300,
                  width: 200,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVNZlvltKfuV-uBL_D0g6hnp8J_UN7twWuqg&usqp=CAU"),
                ),
                SizedBox(
                  height: 300,
                  width: 200,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO4_kKSQ_iarKatsPhloAP_J4nyFs-RBLgHw&usqp=CAU"),
                ),

                SizedBox(
                  height: 300,
                  width: 200,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRinZB8cNYNBlq0v-Uws0N28YFqKF8DTOwuuw&usqp=CAU"),
                ),
                SizedBox(
                  height: 300,
                  width: 200,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRid1wsxiwIQ2Y3gCQIHaDRTm9b3NoTZgnkog&usqp=CAU"),
                ),
                SizedBox(
                  height: 300,
                  width: 200,
                  child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGTJJ8iAR_QQnHkfPBUEyMwRF6CCmEn9mHAA&usqp=CAU"),
                ),
                SizedBox(
                  height: 300,
                  width: 200,
                  child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQX0sRdJ7lczVhRFrdlE1s7arXRFQXseTURaA&usqp=CAU"),
                ),
                SizedBox(
                  height: 300,
                  width: 200,
                  child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_6F9N80M6MRPvkF0DyGAPky981QFZ1EEfrw&usqp=CAU"),
                ),
              ],
            ),
            ),
            const Row(
              children: [
                Text(" Movies",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:
            Row(
              children: [
                SizedBox(
                  height: 300,
                  width: 200,
                  child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9oWQlG6SQN1QEtRFhrK45X-2M-kw9_4eHcA&usqp=CAU"),
                ),
                //const Padding(padding: EdgeInsets.all(0.0)),
                SizedBox(
                  height: 300,
                  width: 200,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy-NPzolHmVp3vXEcdfQoCkqIzFIAvQfLHWw&usqp=CAU"),
                ),
                SizedBox(
                  height: 300,
                  width: 200,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTARVsOtOpjwGUh1Z-n-t7Ggu2sDreOsr11Gg&usqp=CAU"),
                ),

                SizedBox(
                  height: 300,
                  width: 200,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-H1SyGc-iERy3rLEk26nEq0UnUA1b6N7MZA&usqp=CAU"),
                ),
                SizedBox(
                  height: 300,
                  width: 200,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM-ZRJWQIyTmUxED4OB-4BZ_DjO8GOxWfcDw&usqp=CAU"),
                ),
                SizedBox(
                  height: 300,
                  width: 200,
                  child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0hZTW45PKs7eJqqyKj8djWpjtpmg9KTMy7A&usqp=CAU"),
                ),
                SizedBox(
                  height: 300,
                  width: 200,
                  child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrUQ3tB_Z5X6rfehzKWVC9udWYYklUJS2DPw&usqp=CAU"),
                ),
                SizedBox(
                  height: 300,
                  width: 200,
                  child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThiHaCA29wbdfASahuW2shw74mtxIzU4hvRw&usqp=CAU"),
                ),
              ],
            ),
            ),
            const Row(
              children: [
                Text(" New Released",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:
            Row(
              children: [
                SizedBox(
                  height: 300,
                  width: 200,
                  child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMtOuHF58pkOb1qcT8NCOh6gx0Mjy_oMjA5Q&usqp=CAU"),
                ),
                //const Padding(padding: EdgeInsets.all(0.0)),
                SizedBox(
                  height: 300,
                  width: 200,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRq3ejYWzGV2LJYVziBC6Ge4l7y4dPMEpRTPg&usqp=CAU"),
                ),
                SizedBox(
                  height: 300,
                  width: 200,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhooMMAGFkoxXt3lpDJXcDY-euMAniwF8_UA&usqp=CAU"),
                ),

                SizedBox(
                  height: 300,
                  width: 200,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQupe_C67LfpW9YcKrib8EXqcS1fgt9VqkvsA&usqp=CAU"),
                ),
                SizedBox(
                  height: 300,
                  width: 200,
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlrONxO6b6ANfxkrKu2_-NY6Mt-Oa2xhwDhQ&usqp=CAU"),
                ),
                SizedBox(
                  height: 300,
                  width: 200,
                  child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS625lg_BQzOLYhdUoYJug6sh_u-URXbDzdlQ&usqp=CAU"),
                ),
                SizedBox(
                  height: 300,
                  width: 200,
                  child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUgYunGoA7Kzef9-GcPhQsYGhQ8dBT2wRe6g&usqp=CAU"),
                ),
                SizedBox(
                  height: 300,
                  width: 200,
                  child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROeXS5q37MGYcqld9OfB8CFmg-QcO30e0O4g&usqp=CAU"),
                ),
              ],
            ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}
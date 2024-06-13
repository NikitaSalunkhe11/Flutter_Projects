import 'package:flutter/material.dart';

class Flag extends StatelessWidget {
  const Flag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 184, 217, 245),
      appBar: AppBar(
        title: const Text("India Flag"),
      ),
      body: Padding(padding: EdgeInsets.only(top: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 400,
                  width: 3,
                  color: Color.fromRGBO(35, 23, 18, 1),
                ),
              ],
            ),
            Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 400,
                  width: 8,
                  color: Color.fromARGB(255, 112, 59, 39),
                ),
              ],
            ),
            Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 200,
                  color: Colors.orange,
                ),
                Container(
                  height: 50,
                  width: 200,
                  color: Colors.white,
                  child: Image.network("data:image/png;base64,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"),
                ),
                Container(
                  height: 50,
                  width: 200,
                  color:Colors.green,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

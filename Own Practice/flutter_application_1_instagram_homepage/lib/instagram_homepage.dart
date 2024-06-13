import 'package:flutter/material.dart';

class Instagram_page extends StatefulWidget {
  const Instagram_page({super.key});

  @override
  State<Instagram_page> createState() => _Instagram_page();
}

class _Instagram_page extends State<Instagram_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Instagram",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.normal,
          ),
        ),
        actions:const [
          Icon(Icons.favorite_outline_rounded,
          color: Colors.white,
          ),
          Padding(padding: EdgeInsetsDirectional.all(3.0)),
          Icon(Icons.message_outlined,
          color: Colors.white,)
          ],),
      backgroundColor: Colors.black,
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
            child:Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8, left: 8),
                      child: CircleAvatar(
                        radius: 49,
                        backgroundColor: Color.fromARGB(255, 255, 7, 114),
                        child: CircleAvatar(
                          radius: 46,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            radius: 43,
                            backgroundImage: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUF9odx3EvYl1Jl-XF4BJMCXPfVRCTTM_LAQ&usqp=CAU"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8, left: 8),
                      child: CircleAvatar(
                        radius: 49,
                        backgroundColor: Color.fromARGB(255, 255, 7, 114),
                        child: CircleAvatar(
                          radius: 46,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            radius: 43,
                            backgroundImage: NetworkImage(
                                "https://tse2.mm.bing.net/th?id=OIP.LpX5L7qwDndBxzi8nFx1-gHaFj&pid=Api&P=0&h=180"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8, left: 8),
                      child: CircleAvatar(
                        radius: 49,
                        backgroundColor: Color.fromARGB(255, 255, 7, 114),
                        child: CircleAvatar(
                          radius: 46,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            radius: 43,
                            backgroundImage: NetworkImage(
                                "https://tse1.mm.bing.net/th?id=OIP.mPQkqGEYIfj1G6AqWJOL9gHaFS&pid=Api&P=0&h=180"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8, left: 8),
                      child: CircleAvatar(
                        radius: 49,
                        backgroundColor: Color.fromARGB(255, 255, 7, 114),
                        child: CircleAvatar(
                          radius: 46,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            radius: 43,
                            backgroundImage: NetworkImage(
                                "https://tse3.mm.bing.net/th?id=OIP.t6Q-Q04cV5MARKv4joCXqwAAAA&pid=Api&P=0&h=180"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8, left: 8),
                      child: CircleAvatar(
                        radius: 49,
                        backgroundColor: Color.fromARGB(255, 255, 7, 114),
                        child: CircleAvatar(
                          radius: 46,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            radius: 43,
                            backgroundImage: NetworkImage(
                                "https://tse3.mm.bing.net/th?id=OIP.DbgIu9-MNt9xbskq-cvOmAHaHV&pid=Api&P=0&h=180"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8, left: 8),
                      child: CircleAvatar(
                        radius: 49,
                        backgroundColor: Color.fromARGB(255, 255, 7, 114),
                        child: CircleAvatar(
                          radius: 46,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            radius: 43,
                            backgroundImage: NetworkImage(
                                "https://tse4.mm.bing.net/th?id=OIP.qrHlCNGH2uDsxHMbJQF0JQHaFj&pid=Api&P=0&h=180"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8, left: 8),
                      child: CircleAvatar(
                        radius: 49,
                        backgroundColor: Color.fromARGB(255, 255, 7, 114),
                        child: CircleAvatar(
                          radius: 46,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            radius: 43,
                            backgroundImage: NetworkImage(
                                "https://tse1.mm.bing.net/th?id=OIP.ofp154TqKQP5yLBp3OPFUAHaJm&pid=Api&P=0&h=180"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ),
            
          ],
        ),
      ),
    );
  }
}

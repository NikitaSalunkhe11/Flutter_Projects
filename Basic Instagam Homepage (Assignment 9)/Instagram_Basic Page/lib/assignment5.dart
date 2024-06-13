import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget{
  const Assignment5({super.key});

  State<Assignment5> createState() => _Assignment5State();
}

class _Assignment5State extends State<Assignment5>{
  bool _isPost1Liked = false;
  bool _isPost2Liked = false;
  bool _isPost3Liked = false;

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        title: const Text(
          "Instagram",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 30,
          ),
          ),
          actions: const [
            Icon(
              Icons.favorite_rounded,
            )
          ],
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Image.network("https://tse4.mm.bing.net/th?id=OIP.O150vRH3FBkQb16PAgyK3AHaEj&pid=Api&P=0&h=180",
                  width: double.infinity,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: (){
                      setState(() {
                        _isPost1Liked = !_isPost1Liked;
                      });
                    }, 
                    icon: _isPost1Liked 
                      ? const Icon(
                        Icons.favorite_rounded,
                        color: Colors.red,
                      )
                      :const Icon(
                        Icons.favorite_outline_rounded,
                      ),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.comment_outlined),
                      ),
                      IconButton(onPressed: (){},
                       icon: const Icon(
                        Icons.send,
                       ),
                       ),
                       const Spacer(),
                       IconButton(onPressed: (){},
                        icon: const Icon(Icons.bookmark_outline,
                        ),
                      ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                 child: Image.network("https://tse4.mm.bing.net/th?id=OIP.T5QrdMnPheS5NiXRCCmYfAHaEo&pid=Api&P=0&h=180",
                  width: double.infinity,
                  ),
                ),
                Row(children: [
                  IconButton(onPressed: (){
                    setState(() {
                      _isPost2Liked = ! _isPost2Liked;
                    });
                  }, 
                  icon: Icon(
                      _isPost2Liked 
                      ? Icons.favorite_rounded
                      :Icons.favorite_outline_outlined,
                        color: _isPost2Liked ? Colors.red:Colors.black,
                      ),
                      ),
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.comment_outlined),
                      ),
                      IconButton(onPressed: (){},
                       icon: const Icon(
                        Icons.send,
                       ),
                       ),
                       const Spacer(),
                       IconButton(onPressed: (){},
                        icon: const Icon(Icons.bookmark_outline,
                        ),
                      ),
                ],
                ),
              ],
            ),
           Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Image.network("https://tse4.mm.bing.net/th?id=OIP.oq-lcYbhyFWCx_WAIlKyKQHaEo&pid=Api&P=0&h=180",
                  width: double.infinity,
                  ),
                ),
                Row(children: [
                  IconButton(onPressed: (){
                    setState(() {
                      _isPost3Liked = ! _isPost3Liked;
                    });
                  }, 
                  icon: Icon(
                      _isPost3Liked 
                      ? Icons.favorite_rounded
                      :Icons.favorite_outline_outlined,
                        color: _isPost3Liked ? Colors.red:Colors.black,
                      ),
                      ),
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.comment_outlined),
                      ),
                      IconButton(onPressed: (){},
                       icon: const Icon(
                        Icons.send,
                       ),
                       ),
                       const Spacer(),
                       IconButton(onPressed: (){},
                        icon: const Icon(Icons.bookmark_outline,
                        ),
                      ),
                ],
                ),
              ],
            ),
             
          ],))
    );
  }
}
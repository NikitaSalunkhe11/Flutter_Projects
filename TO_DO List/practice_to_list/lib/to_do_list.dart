import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class To_do_list extends StatefulWidget{
  const To_do_list({super.key});

  @override
  State<To_do_list> createState()=> _to_do_list();
}
class _to_do_list extends State<To_do_list>{

  final TextEditingController _titlecon = TextEditingController();
  final TextEditingController _descriptioncon = TextEditingController();
  final TextEditingController _datecon = TextEditingController();

  void Showmodel(){
    showModalBottomSheet(
      isScrollControlled: true,
      shape:const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )
      ),
      context: context,
      builder: (context){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text("Create Task",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),

              Text(
                "Title",
                style: GoogleFonts.quicksand(
                  color: const Color.fromRGBO(2, 167, 177, 1),
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                ),
              ),

              TextField(
                controller: _titlecon,
                decoration: InputDecoration(
                  hintText: 'Enter the title',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Color.fromRGBO(0,139,148,1),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                ), 
              ),
              const SizedBox(
                height: 20,
              ),

              Text(
                "Description",
                style: GoogleFonts.quicksand(
                  color: const Color.fromRGBO(2, 167, 177, 1),
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                ),
              ),

              TextField(
                controller: _titlecon,
                decoration: InputDecoration(
                  hintText: 'Enter the description',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Color.fromRGBO(0,139,148,1),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                ), 
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Date",
                style: GoogleFonts.quicksand(
                  color: const Color.fromRGBO(2, 167, 177, 1),
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                ),
              ),

              TextField(
                controller: _titlecon,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Color.fromRGBO(0,139,148,1),
                    ),
                  ),
                  suffixIcon: const Icon(Icons.calendar_month),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                ), 
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        );
      });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color.fromRGBO(2, 167, 177, 1),
        title: Text(
          "TO-Do List",
          style: GoogleFonts.quicksand(
            fontSize: 23,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          Showmodel();
        } ),
    );
  }
}
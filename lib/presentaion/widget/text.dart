import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cutomtext extends StatelessWidget {
  String ?text;
   Cutomtext( {
    super.key,
    required this.text
  
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        text!,
        style: GoogleFonts.quicksand(
          textStyle:TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Color.fromRGBO(50, 50, 50, 1))
        ),
      ),
    );
  }
}


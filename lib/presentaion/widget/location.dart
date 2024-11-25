import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Location extends StatelessWidget {
  const Location({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Icon(
            Icons.location_on_rounded,
            color: const Color.fromRGBO(41, 209, 119, 1),
          ),
          Text(
            'ABCD, New Delhi',
            style: GoogleFonts.quicksand(
              textStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(50, 50, 50, 1)
              )
            ),

          ),
          Icon(Icons.keyboard_arrow_down,
              color: const Color.fromARGB(255, 11, 185, 75))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MoreRow extends StatelessWidget {
  const MoreRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('More',
            style: GoogleFonts.quicksand(
              textStyle: TextStyle(
                fontSize: 14,
                color:Color.fromRGBO(41, 209, 119, 1), fontWeight: FontWeight.w700)
            )),
        Icon(
          Icons.keyboard_arrow_down_outlined,
          color: Color.fromRGBO(41, 209, 119, 1),
        ),
      ],
    );
  }
}


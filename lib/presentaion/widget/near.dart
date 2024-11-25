import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NearRow extends StatelessWidget {
  const NearRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: Row(
        children: [
          Text(
            'Nearby stores',
            style: GoogleFonts.quicksand(
                textStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
          ),
          SizedBox(width: 190),
          Text('See all',
              style: GoogleFonts.quicksand(
                textStyle: TextStyle(
                    color: Color.fromRGBO(6, 194, 94, 1),
                    fontWeight: FontWeight.w700),
              ))
        ],
      ),
    );
  }
}

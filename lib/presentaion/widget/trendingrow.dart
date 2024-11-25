import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrendingRow extends StatelessWidget {
  const TrendingRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: Row(
        children: [
          Text(
            'Trending',
            style:GoogleFonts.quicksand(
              textStyle: TextStyle(fontWeight: FontWeight.w700,fontSize: 22)
            ),
          ),
          SizedBox(width: 230),
          Text(
            'See all',
            style: GoogleFonts.quicksand(
              textStyle: TextStyle(
                color: const Color.fromRGBO(6, 194, 94, 1), fontWeight: FontWeight.w700,)
            ),
          )
        ],
      ),
    );
  }
}





import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Icream extends StatelessWidget {
  const Icream({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 37),
            child: Container(
              height: 88,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: DecorationImage(
                    image: AssetImage('assets/image/icream.jpg'),
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          SizedBox(
            width: 13,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Mithas Bhandar',
                  style: GoogleFonts.quicksand(
                    textStyle:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  )),
              Text(
                'Sweets, North Indian',
                style: GoogleFonts.quicksand(
                    height: 1.5,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: Color.fromRGBO(71, 72, 72, 1)),
              ),
              Text(
                '(store location)  |  6.4 kms',
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  height: 1.5,
                  color: Color.fromRGBO(71, 72, 72, 1),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Color.fromRGBO(71, 71, 71, 1),
                    size: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '4.1  |  45 mins',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        height: 2.1,
                        color: Color.fromRGBO(71, 71, 71, 1)),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

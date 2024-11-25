// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Deals extends StatelessWidget {
  final int index;

  const Deals({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        width: 343.08,
        height: 160,
        margin: EdgeInsets.symmetric(vertical: 13, horizontal: 8),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
           image: DecorationImage(
                    image: AssetImage(
                        'assets/image/210edcb76fad42c1e1bba20beee13e4c.png'),
                    fit: BoxFit.contain,
                     alignment: Alignment.bottomRight
                  ),
          color: Color.fromRGBO(38, 38, 38, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 70,
                    width: 250,
                    child: Text(
                      'Customer favourite top supermarkets',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Explore',
                        style: GoogleFonts.quicksand(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(234, 126, 0, 1)
                        )
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 23,
                        color: Color.fromRGBO(234, 126, 0, 1),
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

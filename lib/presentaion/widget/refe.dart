import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Refer extends StatelessWidget {
  const Refer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18, left: 18),
      child: Container(
        height: 88, 
        width: 374,// Adjusted height for better layout
        decoration: BoxDecoration(
          color: const Color.fromRGBO(41, 209, 119, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, // Ensure proper spacing
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
              //  crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center content vertically
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 90),
                    child: Text(
                      'Refer & Earn',
                      style: GoogleFonts.quicksand(
                        textStyle: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                      )
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Invite your friends & earn 15% off',
                        style:
                            GoogleFonts.quicksand(
                              textStyle: TextStyle(color: Colors.white, fontSize: 14,fontWeight: FontWeight.w500),
                            )
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.arrow_circle_right_rounded,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 25,top: 40), // Space from the container edge
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    8), // Rounded corners for the image
                child: Container(
                  width: 70, // Set image width
                  height: 80, // Set image height
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/image/giftbox-removebg-preview.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

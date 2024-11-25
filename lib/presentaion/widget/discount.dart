// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Discounts extends StatelessWidget {
  final int index;

  Discounts({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    // List of images and discount texts
    List<Map<String, String>> items = [
      {
        'image': 'assets/image/FRUITs-removebg-preview.png',
        'text': '''DISCOUNT
25% ALL
FRUITS''',
      },
      {
        'image': 'assets/image/meatdiscount-removebg-preview.png',
        'text': '''DISCOUNT 
30% ON 
NON VEG''',
      },
      {
        'image': 'assets/image/stationarydi-removebg-preview.png',
        'text': '''DISCOUNT 
15% ON 
STATIONARY''',
      },

      {
        'image': 'assets/image/cosmeticdis-removebg-preview.png',
        'text': '''DISCOUNT
 20% ON 
COSMETIC''',
      },
      // Add more items as needed
    ];

    // Get a color based on the index
    List<Color> colors = [
      const Color.fromRGBO(16, 194, 94, 1),
      const Color.fromARGB(255, 0, 106, 212),
      Colors.red,
      Colors.tealAccent
    ];
    Color containerColor = colors[index % colors.length]; // Loop through colors

    // Get the current image and text from the items list based on the index
    String imagePath = items[index % items.length]['image']!;
    String discountText = items[index % items.length]['text']!;

    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Container(
        width: 374,
        margin: EdgeInsets.symmetric(vertical: 13, horizontal: 1),
        padding: EdgeInsets.only(top: 45, left: 20),
        decoration: BoxDecoration(
          color: containerColor,
          // image: DecorationImage(
          //   //image: AssetImage(imagePath), // Dynamically set the image
          //   fit: BoxFit.cover,
          //),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(discountText, // Dynamically set the discount text
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    )),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(255, 137, 24, 1)),
                    fixedSize: MaterialStateProperty.all(Size(170, 26)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(3), // Reduced radius
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'CHECK NOW',
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.white)),
                  ),
                )
              ],
            ),
            Container(
              height: 300,
              width: 181, // Add width to avoid overflow
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
                // Optional for rounded corners
              ),
            )
          ],
        ),
      ),
    );
  }
}

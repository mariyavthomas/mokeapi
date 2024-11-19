// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

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
      Colors.green,
      Colors.red,
      Colors.cyan,
      Colors.tealAccent
    ];
    Color containerColor = colors[index % colors.length]; // Loop through colors

    // Get the current image and text from the items list based on the index
    String imagePath = items[index % items.length]['image']!;
    String discountText = items[index % items.length]['text']!;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 350,
        margin: EdgeInsets.symmetric(vertical: 13, horizontal: 8),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: containerColor,
          image: DecorationImage(
            image: AssetImage(imagePath), // Dynamically set the image
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    discountText, // Dynamically set the discount text
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.only(right: 180),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(6), // Reduced radius
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text('CHECK NOW'),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

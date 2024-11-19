import 'package:flutter/material.dart';

class Refer extends StatelessWidget {
  const Refer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18, left: 18),
      child: Container(
        height: 90, // Adjusted height for better layout
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 85, 223, 140),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, // Ensure proper spacing
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center content vertically
                children: [
                  Text(
                    'Refer & Earn',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Invite your friends & earn 15% off',
                        style:
                            TextStyle(color: Colors.white, fontSize: 15),
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
                  right: 12), // Space from the container edge
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

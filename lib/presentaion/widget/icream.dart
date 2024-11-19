import 'package:flutter/material.dart';

class Icream extends StatelessWidget {
  const Icream({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom:37),
          child: ClipRRect(
            borderRadius:
                BorderRadius.circular(10), // Rounded corners
            child: Image.asset(
              'assets/image/icream.jpg', // Path to your image
              fit: BoxFit
                  .cover, // Adjust the image to cover the container
              width: 100, // Set desired width
              height: 100, // Set desired height
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Mithas Bhandar',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
            ,Text('Sweets, North Indian'),
            Text('(store location)  |  6.4 kms'),
            Row(
              children: [
                Icon(Icons.star),
                Text('4.1  |  45 mins'),
              ],
            )
          ],
        )
      ],
    );
  }
}

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Deals extends StatelessWidget {
  final int index;

  Deals({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
   
   

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 350,
        margin: EdgeInsets.symmetric(vertical: 13, horizontal: 8),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('assets/image/veg-removebg-preview.png'), // Dynamically set the image
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
                    'Customer favourite top supermarkets', // Dynamically set the discount text
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
              child:Row(
                children: [
                  Text('Explore',style: TextStyle(color: Colors.orange,fontSize: 18,fontWeight: FontWeight.bold),),
                  Icon(Icons.arrow_forward,color: Colors.orange,)
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}

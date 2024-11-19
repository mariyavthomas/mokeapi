import 'package:flutter/material.dart';
import 'package:mockapi/presentaion/widget/icream.dart';

class TrendingSection extends StatelessWidget {
  const TrendingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
  padding: const EdgeInsets.only(left: 18),
  child: 
SizedBox(
  height: 250, // Specify the height for the SizedBox
  child: Padding(
    padding: const EdgeInsets.only(left: 18),
    child: Column(
      children: [
        Expanded(
          child: ListView.builder(
            scrollDirection:
                Axis.horizontal, // Enables horizontal scrolling
            itemCount: 10, // Number of items to display
            itemBuilder: (context, index) {
              return Icream();
            },
          ),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection:
                Axis.horizontal, // Enables horizontal scrolling
            itemCount: 10, // Number of items to display
            itemBuilder: (context, index) {
              return Icream();
            },
          ),
        ),
      ],
    ),
  ),
));
  }
}


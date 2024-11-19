import 'package:flutter/material.dart';
import 'package:mockapi/presentaion/widget/deals.dart';
import 'package:mockapi/presentaion/widget/icream.dart';

class Craze extends StatelessWidget {
  const Craze({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10, // Number of items to display
        itemBuilder: (context, index) {
          return Deals(index: index);
        },
      ),
    );
  }
}

class Icreamall extends StatelessWidget {
  const Icreamall({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}


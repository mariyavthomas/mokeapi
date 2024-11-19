import 'package:flutter/material.dart';
import 'package:mockapi/presentaion/widget/discount.dart';

class PickOne extends StatelessWidget {
  const PickOne({
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
          return Discounts(index: index);
        },
      ),
    );
  }
}


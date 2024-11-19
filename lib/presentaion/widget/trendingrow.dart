import 'package:flutter/material.dart';

class TrendingRow extends StatelessWidget {
  const TrendingRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: Row(
        children: [
          Text(
            'Trending',
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 250),
          Text(
            'See All',
            style: TextStyle(
                color: Colors.green, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}





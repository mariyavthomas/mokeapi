import 'package:flutter/material.dart';

class NearRow extends StatelessWidget {
  const NearRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: Row(
        children: [
          Text(
            'Nearby stores',
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 200),
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
import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  const Location({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Icon(
            Icons.location_on_rounded,
            color: const Color.fromARGB(255, 47, 197, 102),
          ),
          Text(
            'ABCD, New Delhi',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          Icon(Icons.keyboard_arrow_down,
              color: const Color.fromARGB(255, 11, 185, 75))
        ],
      ),
    );
  }
}

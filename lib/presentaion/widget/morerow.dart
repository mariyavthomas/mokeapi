import 'package:flutter/material.dart';

class MoreRow extends StatelessWidget {
  const MoreRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('More',
            style: TextStyle(
                color: Colors.green, fontWeight: FontWeight.w500)),
        Icon(
          Icons.keyboard_arrow_down_outlined,
          color: Colors.green,
        ),
      ],
    );
  }
}


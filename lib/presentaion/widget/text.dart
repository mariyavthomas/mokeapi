import 'package:flutter/material.dart';

class Cutomtext extends StatelessWidget {
  String ?text;
   Cutomtext( {
    super.key,
    required this.text
  
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        text!,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}


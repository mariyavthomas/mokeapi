import 'package:flutter/material.dart';

class ServiceItem extends StatelessWidget {
  final String icon;
  final IconData ?icons;
  final String label;
  final String? discountText;

  const ServiceItem({
    Key? key,
    this.icons,
    required this.icon,
    required this.label,
    this.discountText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Calculate scaling factor based on screen size
    double iconSize = MediaQuery.of(context).size.width * 0.09;
    double fontSize = MediaQuery.of(context).size.width * 0.025;
    double containerHeight = MediaQuery.of(context).size.height * 0.07;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
        
          alignment: Alignment.topRight,
          children: [
            Container(
              
              width: 75,
              height: containerHeight,
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(icon)),
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 3,
                  ),
                ],
              ),
              child: Icon(icons,color: Colors.amber,size: fontSize *4,),
            ),
            if (discountText != null)
              Positioned(
                top: 0,
                right: 3,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 166, 33, 243),
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                  child: Text(
                    discountText!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: fontSize,
                    ),
                  ),
                ),
              ),
          ],
        ),
        SizedBox(height: 8.0),
        Text(
          label,
          style: TextStyle(fontSize: fontSize),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

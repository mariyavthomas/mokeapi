import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    double iconSize = MediaQuery.of(context).size.width ;
    double fontSize = MediaQuery.of(context).size.width * 0.025;
    double containerHeight = MediaQuery.of(context).size.height * 0.07;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
        
          alignment: Alignment.topRight,
          children: [
            Container(
              
              width: 70,
              height: containerHeight,
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                //image: DecorationImage(image: AssetImage(icon,),scale:60 / 45),
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 195, 192, 192).withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 2,
                  ),
                ],
              ),
              child: SizedBox(
    width: 45, // Set image width
    height: 45, // Set image height
    child: Image.asset(icon, fit: BoxFit.contain), // Add image
  ),
            ),
            if (discountText != null)
              Positioned(
                top: 1,
                right: 1,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 166, 33, 243),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Text(
                    discountText!,
                    style:GoogleFonts.quicksand(
                    textStyle:    TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,

                      fontSize: 8,
                    ),
                    )
                  ),
                ),
              ),
          ],
        ),
        SizedBox(height: 8.0),
        Text(
          label,
          style: GoogleFonts.quicksand(
            textStyle: TextStyle(fontSize: fontSize,fontWeight: FontWeight.bold,color:Color.fromRGBO(50, 50, 50, 1) ),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NearByStore extends StatelessWidget {
  const NearByStore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 16,
            ),
            Container(
              height: 80,
              width: 72,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: DecorationImage(
                    image: AssetImage('assets/image/imgaenear.jpg'),
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
              width: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Freshly Baker',
                  style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                          height: 1.5, fontSize: 18, fontWeight: FontWeight.w800)),
                ),
                Text(
                  'Sweets, North Indian',
                  style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      height: 1,
                      color: Color.fromRGBO(71, 71, 71, 1)),
                ),
                Text(
                  'Site No - 1  |  6.4 kms',
                  style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      height: 1.5,
                      color: Color.fromRGBO(71, 71, 71, 1)),
                ),
                Container(
                  width: 50,
                  height: 20,
                  decoration:
                      BoxDecoration(color: const Color.fromRGBO(65, 82, 159, 0.15)),
                  child: Center(
                      child: Text('Top Store',
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                color: Color.fromRGBO(80, 80, 80, 1),
                                fontSize: 9,
                                fontWeight: FontWeight.w500),
                          ))),
                ),
              ],
            ),
            SizedBox(
              width: 80,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.star,
                        color: Color.fromRGBO(80, 80, 80, 1), size: 13),
                        SizedBox(
                          width: 4,
                        ),
                    Text(
                      '4.1',
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w500, fontSize: 16, height: 1.5),
                    )
                  ],
                ),
                Text('45 mins',
                    style: GoogleFonts.quicksand(
                      textStyle: TextStyle(
                          color: const Color.fromRGBO(234, 126, 0, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ))
              ],
            )
          ],
        ),
        Divider(
          endIndent: 20,
          indent: 110,
          color: Color.fromRGBO(222, 222, 222, 1),
        ),
        Row(
       children: [
        SizedBox(
          width: 110,
        ),
        SizedBox(
          width: 16,
          height: 16,
          child: Image.asset('assets/image/discount-sticker.png')
        ),
        SizedBox(width: 10,),
        Text('Upto 10% OFF',style: GoogleFonts.quicksand(
          textStyle: TextStyle(fontWeight: FontWeight.w700,fontSize: 12,)
        ),),
        SizedBox(
          width: 20,
        ),
        SizedBox(
          width: 16,
          height: 16,
          child: Image.asset('assets/image/gaia.png'),
        ),
        SizedBox(
          width: 5,
        ),
        Text('3400+ items available',style: GoogleFonts.quicksand(
          fontWeight: FontWeight.w700,
          fontSize: 12
        ),)
       ],
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}

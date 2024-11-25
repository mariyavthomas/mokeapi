import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mockapi/application/apifetch/fetchdata_bloc.dart';
import 'package:mockapi/presentaion/screen/notification/screen/notificationscreen.dart';

class Searching extends StatelessWidget {
  const Searching({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color.fromRGBO(238, 238, 238, 1),
            ),
            width: 272,
            height: 48,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Search for product/store',
                  style: GoogleFonts.quicksand(
                    textStyle: GoogleFonts.quicksand(
              textStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: const Color.fromRGBO(150, 150, 150, 1)
              )
                    ))),
                SizedBox(
                  width: 19,
                ),
                Icon(
                  Icons.search,
                  color: const Color.fromRGBO(41, 209, 119, 1),
                  size: 30,
                ),
              ],
            ),
          ),
        ),
        
        Stack(
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Notificationscreen(),
                  ),
                );
                context.read<FetchdataBloc>().add(Fetchdata());
              },
              icon: const Icon(
                Icons.notifications_outlined,
                color: Colors.red,
                size: 38,
              ),
            ),
            Positioned(
              right: 11,
              top: 6,
              child: Container(
                
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 0, 0, 1),
                  shape: BoxShape.circle,
                ),
                child: Text(
                  '5',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    
                  ),
                ),
              ),
            ),
          ],
        ),
           SizedBox(
            width: 15,
           ),
    Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/image/tag.png'),fit: BoxFit.cover)),
    )
      ],
    );
  }
}


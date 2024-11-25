import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mockapi/presentaion/widget/category.dart';
import 'package:mockapi/presentaion/widget/crea.dart';
import 'package:mockapi/presentaion/widget/location.dart';
import 'package:mockapi/presentaion/widget/morerow.dart';
import 'package:mockapi/presentaion/widget/near.dart';
import 'package:mockapi/presentaion/widget/nearby.dart';
import 'package:mockapi/presentaion/widget/pickone.dart';
import 'package:mockapi/presentaion/widget/refe.dart';
import 'package:mockapi/presentaion/widget/search.dart';
import 'package:mockapi/presentaion/widget/text.dart';
import 'package:mockapi/presentaion/widget/trendingrow.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int notificationCount = 5;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Location(),
          Searching(),
          Padding(
            padding: const EdgeInsets.only(left: 26, top: 20),
            child: Text(
              "What would you like to do today?",
              style: GoogleFonts.quicksand(
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
              ),
            ),
          ),
          Categgory(),
           MoreRow(),
          Cutomtext(
            text: 'Top picks for you',
          ),
          PickOne(),
          SizedBox(height: 16,),
          TrendingRow(),
          SizedBox(height:10 ,),
          Icreamall(),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Text('Craze deals',
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w700,
                  fontSize: 23,
                  
                ))
          ),
          Craze(),
          SizedBox(height: 25,),
          Refer(),
          SizedBox(
            height: 30,
          ),
          NearRow(),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 240,
            child: ListView.builder(
              scrollDirection: Axis.vertical, // Enables horizontal scrolling
              itemCount: 2, // Number of items to display
              itemBuilder: (context, index) {
                return NearByStore();
              },
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(41, 209, 119, 1)),
                height: 40,
                width: 240,
                child: Center(
                    child: Text(
                  'View all Store',
                  style: GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.w500)),
                )),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

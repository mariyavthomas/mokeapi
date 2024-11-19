import 'package:flutter/material.dart';
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
      body: ListView(
        children: [
          Location(),
          Searching(),
          Padding(
            padding: const EdgeInsets.only(left: 26, top: 20),
            child: Text(
              "What would you like to do today?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Categgory(),
          MoreRow(),
          Cutomtext(
            text: 'Top picks for you',
          ),
          PickOne(),
          TrendingRow(),
          Icreamall(),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Text('Craze deals',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
          ),
          Craze(),
          Refer(),
          SizedBox(
            height: 10,
          ),
          NearRow(),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.vertical, // Enables horizontal scrolling
              itemCount: 2, // Number of items to display
              itemBuilder: (context, index) {
                return NearByStore();
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 55, 171, 101)),
                height: 45,
                width: 250,
                child: Center(
                    child: Text(
                  'View all Store',
                  style: TextStyle(color: Colors.white, fontSize: 20),
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

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
          padding: const EdgeInsets.only(left: 26),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color.fromARGB(255, 237, 236, 236),
            ),
            width: 250,
            height: 55,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Search for product/store',
                  style: TextStyle(
                      fontSize: 17,
                      color: const Color.fromARGB(255, 131, 131, 131)),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.search,
                  color: const Color.fromARGB(255, 47, 197, 102),
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
                size: 30,
              ),
            ),
            Positioned(
              right: 6,
              top: 6,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  '5',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      //Spacer(),
        IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.tag,
              color: Colors.amber,
              size: 31,
            ))
      ],
    );
  }
}


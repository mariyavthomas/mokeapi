import 'package:flutter/material.dart';

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
            Container(
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30)
              ),
              child: ClipRRect(
                //borderRadius: BorderRadius.all(Radius.circular(4)), // Rounded corners
                child:Image.asset('assets/image/newimag.png',fit: BoxFit.cover,)
              ),
            ),
            SizedBox(
              width: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mithas Freshly Baker',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text('Sweets, North Indian'),
                Text('Site No - 1  |  6.4 kms'),
                Container(
                  width: 50,
                  height: 20,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 225, 222, 222)),
                  child: Center(
                      child: Text(
                    'Top Store',
                    style: TextStyle(color: Colors.black, fontSize: 10),
                  )),
                ),
              ],
            ),
            SizedBox(
              width: 30,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 20,
                    ),
                    Text(
                      '4.1',
                    )
                  ],
                ),
                Text(
                  '45 mins',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 219, 133, 3),
                      fontSize: 12),
                )
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 120),
          child: SizedBox(
            height: 10,
            width: 280,
            child: Divider(
              thickness: 1,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 120),
          child: Row(
            children: [
              Icon(
                Icons.percent,
                color: Colors.orange,
                size: 15,
              ),
              Text('Upto 10% OFF',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
              Icon(
                Icons.nature,
                color: Colors.green,
                size: 15,
              ),
              Text(
                '3400+ items available',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              )
            ],
          ),
        )
      ],
    );
  }
}

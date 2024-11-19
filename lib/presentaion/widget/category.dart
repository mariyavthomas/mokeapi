import 'package:flutter/material.dart';
import 'package:mockapi/presentaion/widget/serciceitem.dart';

class Categgory extends StatelessWidget {
  const Categgory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: SizedBox(
        height: 200, // Adjust height based on how much space you need
        child: GridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 11,
          mainAxisSpacing: 17,
          children: [
            ServiceItem(
              icon: 'assets/image/images1.png',
              label: 'Food Delivery',
              discountText: '10% Off',
            ),
            ServiceItem(
              icon: 'assets/image/medician.jpg',
              label: 'Medicines',
              discountText: '10% Off',
            ),
            ServiceItem(
              icons: Icons.pets,
              icon: '',
              label: 'Pet Supplies',
              discountText: '10% Off',
            ),
            ServiceItem(
              icon: 'assets/image/gift.png',
              label: 'Gifts',
              discountText: null,
            ),
            ServiceItem(
              icon: 'assets/image/meat.png',
              label: 'Meat',
              discountText: null,
            ),
            ServiceItem(
              icon: 'assets/image/cosmetic.png',
              label: 'Cosmetic',
              discountText: null,
            ),
            ServiceItem(
              icon: 'assets/image/stationery.png',
              label: 'Stationery',
              discountText: null,
            ),
            ServiceItem(
              icon: 'assets/image/store.png',
              label: 'Stores',
              discountText: '10% Off',
            ),
          ],
        ),
      ),
    );
  }
}


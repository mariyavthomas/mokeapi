import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mockapi/application/bottom_navigation_bar/bottom_navigation_bar_bloc.dart';
import 'package:mockapi/presentaion/screen/home/home.dart';

List<BottomNavigationBarItem> bottomNavItems = <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(Icons.add_home_work_outlined),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.card_travel),
    label: 'All Product',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.history_toggle_off),
    label: 'Cart',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.chat),
    label: 'Favorite',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.person_3_outlined),
    label: 'Profile',
  ),
];

List<Widget> bottomNavScreen = <Widget>[
  HomeScreen(),
  Text('helo'),
  Text('helo'),
  Text('helo')
];

class MyBottom extends StatefulWidget {
  const MyBottom({super.key});

  @override
  State<MyBottom> createState() => _MyBottomState();
}

class _MyBottomState extends State<MyBottom> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BottomNavigationBarBloc, BottomNavigationBarState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: bottomNavScreen.elementAt(state.tabIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.tabIndex,
            onTap: (index) {
              BlocProvider.of<BottomNavigationBarBloc>(context)
                  .add(TabChange(tabIndex: index));
            },
            items: bottomNavItems,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: const Color.fromARGB(255, 11, 185, 75),  // Customize color as desired
            unselectedItemColor: Colors.grey, // Customize color as desired
            showUnselectedLabels: true, // Optional: show labels for unselected items
          ),
        );
      },
    );
  }
}

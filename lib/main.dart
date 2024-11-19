import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mockapi/application/apifetch/fetchdata_bloc.dart';
import 'package:mockapi/application/bottom_navigation_bar/bottom_navigation_bar_bloc.dart';
import 'package:mockapi/presentaion/screen/bottamnav/screen/bottamnav.dart';

void main(){
 runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
         BlocProvider<BottomNavigationBarBloc>(create: (context) => BottomNavigationBarBloc()),
          BlocProvider<FetchdataBloc>(create: (context) => FetchdataBloc()),
        
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyBottom(),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leaguespots/CustomSplash.dart';
import 'package:leaguespots/Utills/EventDetails_Conatiner.dart';

import 'Screens/EventDetails_PendingEvents.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Leaguespot',
        home: PendingEvents(),
      ),
    );
  }
}

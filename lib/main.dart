import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_flutter/constants.dart';
import 'package:instagram_flutter/screens/home/home.dart';
import 'package:instagram_flutter/screens/login/login_screen.dart';

import 'dashboard/constants.dart';
import 'dashboard/dashboard.dart';
import 'screens/signup/signup.dart';
import 'screens/welcome/welcomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      home: DashBoardScreen(),
    );
  }
}
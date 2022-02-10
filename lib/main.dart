import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_flutter/constants.dart';
import 'package:instagram_flutter/crud/scrud.dart';
import 'package:instagram_flutter/responsive/mobileScreenLayout.dart';
import 'package:instagram_flutter/responsive/responsive_layout.dart';
import 'package:instagram_flutter/responsive/webScreenLayout.dart';
import 'package:instagram_flutter/screens/home/home.dart';
import 'package:instagram_flutter/screens/login/login_screen.dart';
import 'package:instagram_flutter/utils/colors.dart';

import 'dasboard/screens/main_screen.dart';
import 'screens/signup/signup.dart';
import 'screens/welcome/welcomeScreen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyCKfktTpRhQHpw1oxO8K-x73El6TYTv-YM",
          authDomain: "instagramclone-9569a.firebaseapp.com",
          projectId: "instagramclone-9569a",
          storageBucket: "instagramclone-9569a.appspot.com",
          messagingSenderId: "209653276872",
          appId: "1:209653276872:web:d37f3649b9b3fa793e45fd"
      )
    );
    runApp(MyApp());
  } else {
    await Firebase.initializeApp();
    runApp(MyApp());
  }

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      // theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: LoginScreen(),
      // home: ResponsiveLayout(mobileScreenLayout: MobileScreenLayout(), webScreenLayout:WebScreenLayout()),
    );
  }
}
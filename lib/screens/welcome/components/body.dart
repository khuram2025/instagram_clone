import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_flutter/components/rounded_button.dart';
import 'package:instagram_flutter/constants.dart';
import 'package:instagram_flutter/screens/login/login_screen.dart';
import 'package:instagram_flutter/screens/signup/signup.dart';
import 'package:instagram_flutter/screens/welcome/components/background.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to Channab", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.green.shade600),),
            SizedBox(height: size.height * 0.05,),
            SvgPicture.asset("assets/images/farm-svgrepo-com.svg", height: size.height*0.4, width: size.width*0.5,),
            SizedBox(height: size.height * 0.05,),
            RoundedButton(text: "login",
            press: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){return LoginScreen();}));
            },),
            RoundedButton(text: "Sign Up",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: (){Navigator.push(context, MaterialPageRoute(builder: (context){return SignUpScreen();}));},),



          ],
        ),
      ),

    );
  }
}


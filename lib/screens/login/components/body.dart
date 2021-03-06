import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_flutter/components/already_have_an_account_acheck.dart';
import 'package:instagram_flutter/components/round_input_field.dart';
import 'package:instagram_flutter/components/round_password_filed.dart';
import 'package:instagram_flutter/components/rounded_button.dart';
import 'package:instagram_flutter/screens/login/components/backgroundloing.dart';
import 'package:instagram_flutter/screens/signup/signup.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BackgroundLogin(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("LOGIN", style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: size.height*0.03,),
            SvgPicture.asset("assets/images/farm-svgrepo-com.svg", height: size.height*0.4, width: size.width*0.5,),
            SizedBox(height: size.height*0.03,),
            RoundInputField(
                hintText: "Your Email",
                onChanged: (value){}),
            RoundedPasswordField(
              onChanged: (value){},
            ),
            RoundedButton(
              text: "Login",
              press: (){},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return SignUpScreen();
                }));
              },
            )

          ],
        ),
      ),
    );
  }
}

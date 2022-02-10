import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_flutter/components/already_have_an_account_acheck.dart';
import 'package:instagram_flutter/components/round_input_field.dart';
import 'package:instagram_flutter/components/round_password_filed.dart';
import 'package:instagram_flutter/components/rounded_button.dart';
import 'package:instagram_flutter/resources/auth_methods.dart';
import 'package:instagram_flutter/screens/login/login_screen.dart';
import 'package:instagram_flutter/screens/signup/components/background.dart';
import 'package:instagram_flutter/screens/signup/components/or_devider.dart';
import 'package:instagram_flutter/screens/signup/components/social_icon.dart';


class SignupBody extends StatefulWidget {
  const SignupBody({Key? key}) : super(key: key);

  @override
  State<SignupBody> createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();


  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _usernameController.dispose();
    _bioController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("SIGNUP",  style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset("assets/images/farm-svgrepo-com.svg", height: size.height*0.4, width: size.width*0.5,),
          RoundInputField(
            hintText: "Your Email",
              textEditingController: _emailController,
          ),
          RoundInputField(
            hintText: "Username",
            textEditingController: _usernameController,
          ),
          RoundInputField(
            hintText: "Enter Your Bio",
            textEditingController: _bioController,
          ),
          RoundedPasswordField(

              textEditingController: _passwordController,
          ),
          RoundedButton(
            text: "SIGNUP",
            press: () async {

            String res = await AuthMethods().signUpUser(
                email: _emailController.text,
                password: _passwordController.text,
                bio: _bioController.text,
                username: _usernameController.text);
            print(res);
            }

          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(login: false, press: () { Navigator.push(context,
            MaterialPageRoute(builder: (context){return LoginScreen();})
          ); },),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocalIcon(
                iconSrc: "assets/icons/facebook.svg",
                press: () {},
              ),
              SocalIcon(
                iconSrc: "assets/icons/twitter.svg",
                press: () {},
              ),
              SocalIcon(
                iconSrc: "assets/icons/google-plus.svg",
                press: () {},
              ),
            ],
          )

        ],
      ),
    ));
  }
}

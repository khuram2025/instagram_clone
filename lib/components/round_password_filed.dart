import 'package:flutter/material.dart';
import 'package:instagram_flutter/components/text_field_container.dart';
import 'package:instagram_flutter/constants.dart';


class RoundedPasswordField extends StatefulWidget {

  final TextEditingController textEditingController;
  const RoundedPasswordField({Key? key,

    required this.textEditingController}) : super(key: key);

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(child: TextField(
      obscureText: true,

      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: "Password",
        icon: Icon(
          Icons.lock,
          color: kPrimaryColor,

        ),
        suffixIcon: Icon(
          Icons.visibility,
          color: kPrimaryColor,
        ),
        border: InputBorder.none
      ),
    ));
  }
}

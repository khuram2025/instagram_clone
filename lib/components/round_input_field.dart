import 'package:flutter/material.dart';
import 'package:instagram_flutter/components/text_field_container.dart';
import 'package:instagram_flutter/constants.dart';

class RoundInputField extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController textEditingController;


  const RoundInputField({
    Key? key,
    required this.hintText,
    this.icon =Icons.person,
    required this.textEditingController,
  }) : super(key: key);

  @override
  State<RoundInputField> createState() => _RoundInputFieldState();
}

class _RoundInputFieldState extends State<RoundInputField> {


  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            widget.icon,
            color: kPrimaryColor,
          ),
          hintText: widget.hintText,
          border: InputBorder.none,
        ),
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }
}

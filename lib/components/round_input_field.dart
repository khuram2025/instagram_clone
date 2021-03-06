import 'package:flutter/material.dart';
import 'package:instagram_flutter/components/text_field_container.dart';
import 'package:instagram_flutter/constants.dart';

class RoundInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;


  const RoundInputField({
    Key? key,
    required this.hintText,
    this.icon =Icons.person,
    required this.onChanged
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none
        ),
      ),
    );
  }
}

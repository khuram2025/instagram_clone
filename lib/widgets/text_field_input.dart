import 'package:flutter/material.dart';

import '../constants.dart';

class TextFieldInput extends StatelessWidget {

  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;

  const TextFieldInput({Key? key,
    required this.textEditingController,
    this.isPass = false,
    required this.hintText,
    required this.textInputType,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final inputBorder = OutlineInputBorder(
        borderSide: Divider.createBorderSide(context)
    );

    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        icon: Icon(
          Icons.email_outlined,
          color: kPrimaryColor,
        ),
        hintText: hintText,
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        border: inputBorder,
        filled: true,
        contentPadding: EdgeInsets.all(8),
      ),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}

import 'package:flutter/material.dart';

import '../utils/Colors.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String HintText;
  const CustomTextfield({Key? key, required this.controller, required this.HintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  const BoxDecoration(
        boxShadow:[
          BoxShadow(
            color: Colors.blue,
            blurRadius: 5,
            spreadRadius: 5,
          )
        ]
      ),
      child: TextField(
        controller: controller,
        decoration:  InputDecoration(
          fillColor: bgColor,
          filled: true,
          hintText: HintText,
        ),
      ),
    );
  }
}

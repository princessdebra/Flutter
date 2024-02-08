import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';


class CustomTextButton extends StatelessWidget {
  final String buttonName;
  final Color color;
  final double buttonWidth;
  final double buttonHeight;

  const CustomTextButton(
      {super.key,
      required this.buttonName,
      this.color = primaryColor,
      this.buttonHeight = 40,
      this.buttonWidth = 200});
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Container(
          width: buttonWidth,
          height: buttonHeight,
          color: color,
          child: Center(
            child: Text(buttonName),
          ),
        ));
  }
}
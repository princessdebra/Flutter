import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController customTextFieldController;
  final String? hintText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final bool obscuredPassword;
  final bool isPassword;

  const CustomTextField({
    super.key,
    required this.customTextFieldController,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscuredPassword = false,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        obscureText: obscuredPassword,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                style: BorderStyle.solid,
                color: Colors.red,
              )),
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: isPassword
              ? const Icon(Icons.visibility)
              : const Icon(Icons.visibility_off),
        ),
      ),
    );
  }
}
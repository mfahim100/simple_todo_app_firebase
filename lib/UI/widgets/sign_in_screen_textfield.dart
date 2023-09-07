import 'package:flutter/material.dart';

class SignInScreenTextField extends StatelessWidget {
  final String hintText, labelText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final bool obscureText;
  TextEditingController? controller = TextEditingController();
  final String? Function(String?)? validator;
  final int?  maxLength;
  final TextInputType? textInputType;

   SignInScreenTextField({
    super.key,
    required this.hintText,
    required this.labelText,
    this.prefixIcon,
    this.obscureText=false,
    this.suffixIcon,
    this.controller,
    this.validator, this.maxLength,
      this.textInputType= TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      validator: validator,
      controller: controller,
      maxLength: maxLength,
      keyboardType: textInputType,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintText: hintText,
        labelText: labelText,
      ),
    );
  }
}



import 'package:flutter/material.dart';

class AppInputField extends StatelessWidget {
  
final String? hintText;
final String? labelText;
final String? helperText;
final IconData? icon;
final IconData? suffixIcon;
final TextInputType? keyboardType;
final bool obscureText;
final String formProperty;
final Map<String,String> formValues;
final String? Function(String?)? validator;
final TextEditingController? controller;


  const AppInputField({
    Key? key, this.hintText, this.labelText, this.helperText, this.icon, this.suffixIcon, this.keyboardType, this.obscureText= false, required this.formProperty, required this.formValues, this.validator, this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller ,
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) => formValues[formProperty] = value,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: suffixIcon == null ? null : Icon( suffixIcon ),
        icon: icon == null ? null : Icon( icon ),
      ),
    );
  }
}
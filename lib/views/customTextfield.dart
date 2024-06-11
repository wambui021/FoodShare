import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  final IconData? icon;
  final bool hideText;
  final bool isPassword;
  final String? hint;
  final TextEditingController userFieldController;

  const customTextField({
    Key? key,
    required this.userFieldController,
    this.icon,
    this.hideText = false,
    this.isPassword = false,
    this.hint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40, 
      child: TextField(
        cursorRadius: Radius.elliptical(5, 0),
        controller: userFieldController,
        decoration: InputDecoration(
          hintText: hint,
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10), 
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          prefixIcon: Icon(icon, size: 18), 
          suffixIcon: isPassword ? Icon(Icons.visibility, size: 18) : Container(width: 10),
        ),
        obscureText: hideText,
      ),
    );
  }
}

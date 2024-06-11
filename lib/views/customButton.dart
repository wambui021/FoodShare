
import 'package:flutter/material.dart';
import 'package:foodshare/configs/constants.dart';
import 'customText.dart';

class CustomButton extends StatelessWidget {
  final String buttonLabel;
  final VoidCallback? action;
  final Color color, textColor;

  const CustomButton({
    Key? key,
    required this.buttonLabel,
    this.action,
    this.color = appOrangeColor,
    this.textColor = appBlackColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
     
      onPressed: action,
      color: color,
      hoverColor: color,
      elevation: 10,
      padding: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: customText(
        label: buttonLabel,
        labelColor: textColor,
      ),
    );
  }
}

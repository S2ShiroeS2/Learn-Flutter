import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final Color color;
  final Color textColor;
  final Color borderColor;

  const CustomButton(
      {
      @required this.onPressed,
      @required this.buttonText,
      this.color,
      this.textColor,
      this.borderColor = Colors.transparent,
      }
  );

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: borderColor),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(12.0),
      color: color,
      textColor: textColor,
      child: Text(buttonText),
    );
  }
}

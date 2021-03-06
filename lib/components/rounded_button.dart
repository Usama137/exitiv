import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {


  final Color buttonColor;
  final Color textColor;
  final String title;
  final Function onPressed;
  final double buttonWidth;
  final double buttonHeight;
   RoundedButton({ this.title, this.buttonColor, this.onPressed,  this.buttonWidth,  this.buttonHeight,  this.textColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(15.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: buttonWidth,
          height: buttonHeight,
          child: Text(
            title,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}

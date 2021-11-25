import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NameIconButton extends StatelessWidget {


  final Color buttonColor;
  final Color textColor;
  final String title;
  final Function onPressed;
  final double buttonWidth;
  final double buttonHeight;
  IconData icon;
  NameIconButton({ this.title, this.buttonColor, this.onPressed,  this.buttonWidth,  this.buttonHeight,  this.textColor, this.icon});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      color: buttonColor,
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        height: buttonHeight,
        width: buttonWidth,
        child: MaterialButton(
          onPressed: onPressed,
          //minWidth: buttonWidth,
          //height: buttonHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white,),
              SizedBox(height: 3,),
              Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

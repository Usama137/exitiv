import 'package:flutter/material.dart';

class Reserve extends StatefulWidget {
  static const String id = 'reserve_screen';
  @override
  _ReserveState createState() => _ReserveState();
}

class _ReserveState extends State<Reserve> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          "Coming soon"
        ),
      ),
    );
  }
}

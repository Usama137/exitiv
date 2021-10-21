import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  static const String id = 'account_screen';
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
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

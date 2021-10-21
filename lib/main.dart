import 'package:exitiv/views/account.dart';
import 'package:exitiv/views/home.dart';
import 'package:exitiv/views/login.dart';
import 'package:exitiv/views/myview.dart';
import 'package:exitiv/views/reservations.dart';
import 'package:exitiv/views/search.dart';
import 'package:exitiv/views/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:exitiv/views/welcome.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Welcome.id,
        routes: {
          Welcome.id:(context)=>Welcome(),
          Signup.id:(context)=>Signup(),
          Home.id:(context)=>Home(),
          Login.id:(context)=>Login(),
          MyView.id:(context)=>MyView(),
          Search.id:(context)=>Search(),
          Account.id:(context)=>Account(),
          Reserve.id:(context)=>Reserve(),



        }
    );
  }
}

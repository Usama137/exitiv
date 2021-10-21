import 'package:firebase_auth/firebase_auth.dart';
import 'package:exitiv/components/ProgressDialog.dart';
import 'package:exitiv/views/signup.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:exitiv/components/rounded_button.dart';
import 'package:exitiv/components/globalvariables.dart';
import 'package:exitiv/sizes_helpers.dart';
import 'home.dart';

class Login extends StatefulWidget {
  static const String id = 'login_screen';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  void showSnackBar(String message) {
    final snackBar = SnackBar(
        content: Text(
          message,
          textAlign: TextAlign.center,
        ));
    scaffoldKey.currentState.showSnackBar(snackBar);
  }

   void login() async {

    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context)=>ProgressDialog(status: "Logging you in")
    );
    try {
      UserCredential userCredential =
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      if (userCredential != null) {
        Navigator.pop(context);
        Navigator.pushNamed(context, Home.id);
      }
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        showSnackBar(e.message);
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        showSnackBar(e.message);
      }
    }
  }


 /* void login()async{

   showDialog(
        barrierDismissible: false,
        context: context,
       builder: (BuildContext context)=>ProgressDialog(status: "Logging you in")
   );

    final User user=(await _auth.signInWithEmailAndPassword(
        email: emailController.text, password: passwordController.text).catchError((ex){
      Navigator.pop(context);
      showSnackBar(ex.message);
    })).user;
    if(user!=null){
      DatabaseReference userRef=FirebaseDatabase.instance.reference().child('company/${user.uid}');
      userRef.once().then((DataSnapshot snapshot){
        if(snapshot.value!=null){
          Navigator.pushNamedAndRemoveUntil(context, Home.id, (route) => false);
        }
      });
    }

  }

  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SingleChildScrollView(
        //physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: displayHeight(context) * 0.15,
              ),
              Image(
                alignment: Alignment.center,
                height: 200,
                width: 200,
                image: AssetImage('images/blueLogo.png'),
              ),
              SizedBox(
                height: 10,
              ),


              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: 'Email address',
                          labelStyle: TextStyle(fontSize: 14),
                          hintStyle:
                          TextStyle(color: Colors.grey, fontSize: 10)),
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: passwordController,
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(fontSize: 14),
                          hintStyle:
                          TextStyle(color: Colors.grey, fontSize: 10)),
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RoundedButton(
                      buttonColor: Colors.blue,
                      textColor: Colors.white,
                      title: 'Login',
                      buttonWidth: displayWidth(context) * 0.80,
                      onPressed: () {
                        login();
                      },
                    )
                  ],
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, Signup.id, (route) => false);
                },
                child: Text("Don\'t have an account, sign up here"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

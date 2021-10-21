import 'package:exitiv/views/login.dart';
import 'package:exitiv/views/signup.dart';
import 'package:flutter/material.dart';
import 'package:exitiv/components/rounded_button.dart';
import 'package:exitiv/sizes_helpers.dart';

class Welcome extends StatefulWidget {
  static const String id = 'welcome_screen';

  Welcome({Key key}) : super(key: key);
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
            children: [
              Container(
                decoration:  const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/welcome.jpeg'),
                      fit: BoxFit.cover),
                ),
              ),
               Positioned(
                top: 150,
                  left: 80,
                  right: 80,
                  child:  Container(
                    height: 300,
                    width: 300,
                    decoration:  const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/whiteLogo.png'),
                          ),
                    ),
                  ),
              ),
              Positioned(
                bottom: 32,
                right: 10,
                left: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    RoundedButton(
                      buttonColor: Colors.lightBlueAccent,
                      textColor: Colors.white,
                      title: 'Signup',
                      buttonWidth: displayWidth(context) * 0.80,
                      onPressed: () {

                        Navigator.pushNamed(context, Signup.id);
                      },
                      buttonHeight: 20,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account? ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        InkWell(
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.lightBlueAccent,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context,Login.id);
                          },
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
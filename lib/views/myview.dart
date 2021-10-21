import 'package:exitiv/sizes_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyView extends StatefulWidget {
  static const String id = 'view_screen';
  @override
  _MyViewState createState() => _MyViewState();
}

class _MyViewState extends State<MyView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff052D76),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.0),
          child: AppBar(
            automaticallyImplyLeading: false,
            flexibleSpace: Container(

              height: 130,
              width: double.infinity,

              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  scale: 2.6,
                  image: AssetImage(
                      'images/blueLogo.png'
                  ),

                ),
              ),
            ),

          ),
        ),
        body: Stack(
          children: [
            Container(
              decoration:  const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/pattern.png'),
                    fit: BoxFit.cover),
              ),
            ),

            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 10,),

                  Container(
                    height: displayHeight(context)*0.07,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Spacer(),
                        GestureDetector(
                          onTap: (){
                            //
                          },
                          child: Container(
                            child: Row(
                              children: [
                                Icon(CupertinoIcons.square_stack_3d_down_right_fill, color:Color(0xff1460E1),),
                                SizedBox(width: 3,),
                                Text("Hotels", style: TextStyle(
                                    color: Color(0xff1460E1),
                                    fontSize: 12
                                ),)
                              ],
                            ),
                          ),
                        ),
                        Spacer(),

                        GestureDetector(
                          onTap: (){
                            //
                          },
                          child: Container(
                            child: Row(
                              children: [
                                Icon(CupertinoIcons.airplane, color:Color(0xff1460E1),),
                                SizedBox(width: 3,),
                                Text("Trips", style: TextStyle(
                                  color: Color(0xff1460E1),
                                  fontSize: 12,
                                ),)
                              ],
                            ),
                          ),
                        ),
                        Spacer(),

                        GestureDetector(
                          onTap: (){
                            //
                          },
                          child: Container(
                            child: Row(
                              children: [
                                Icon(CupertinoIcons.car, color:Color(0xff1460E1),),
                                SizedBox(width: 3,),
                                Text("Rental Cars", style: TextStyle(
                                  color: Color(0xff1460E1),
                                  fontSize: 12,
                                ),)
                              ],
                            ),
                          ),
                        ),
                        Spacer(),

                        GestureDetector(
                          onTap: (){
                            //
                          },
                          child: Container(
                            child: Row(
                              children: [
                                Icon(CupertinoIcons.location_fill, color:Color(0xff1460E1),),
                                SizedBox(width: 3,),
                                Text("Excursions", style: TextStyle(
                                  color: Color(0xff1460E1),
                                  fontSize: 12,
                                ),)
                              ],
                            ),
                          ),
                        ),
                        Spacer(),

                      ],
                    ),
                  ),
                  SizedBox(height: 30,),

                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Row(children: [
                      Text(
                        "Hi Alwyne!", style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                      ),
                      ),
                    ],
                    ),
                  ),
                  SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: Row(children: [
                        Text(
                          "Recently Viewed", style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        ),
                      ],
                      ),
                    ),

                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Row(children: [
                      Text(
                        "Hotel you recently viewed", style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                      ),
                    ],
                    ),
                  ),
                  SizedBox(height: 10,),

                  Container(
                    height: 150,
                    width: displayWidth(context)*0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.white),
                      image: DecorationImage(

                          image: AssetImage('images/hotel_richo.jpeg'),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 100,),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: [
                              Text("Riu Ocho Rios", style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            children: [
                              Text("Mon Oct 11 - Wed Oct 13", style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),),
                            ],
                          ),
                        ),



                      ],
                    ),

                  ),
                  SizedBox(height: 20,),

                  Container(
                    height: 100,
                    width: displayWidth(context)*0.9,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.black,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top:15.0, left: 3, right: 3),
                      child: Text(
                        "MAKE YOUR NEXT VACAYBE IN THE CARIBBEAN", style: TextStyle(
                          color: Colors.white,
                          fontSize: 12
                      ),
                        textScaleFactor: 2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),

                  Container(
                    height: 600,
                    width: displayWidth(context)*0.9,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/poster.png'),
                          fit: BoxFit.cover),
                    ),

                  ),
                ],
              ),
            ),
          ],
        ) ,
      ),
    );
  }
}

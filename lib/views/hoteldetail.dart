import 'package:exitiv/components/rounded_button.dart';
import 'package:exitiv/views/reserve.dart';
import 'package:flutter/material.dart';

import '../sizes_helpers.dart';

class HotelDetail extends StatefulWidget {
  static const String id = 'detail_screen';
  @override
  _HotelDetailState createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: displayHeight(context) * 0.27,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/hotel_richo.jpeg'),
                            fit: BoxFit.cover),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: displayHeight(context)*0.17,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:8.0,),
                            child: Row(
                              children: [
                                Text("Riu Ocho Rios", style: TextStyle(
                                  fontSize: 30,
                                  color: Color(0xff052D76),

                                ),)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Row(
                              children: [
                                Icon(Icons.location_on,
                                  color: Color(0xff052D76),),
                                Text("Ocho Rios, St Ann", style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff052D76),

                                ),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height: displayHeight(context)*0.25,),
                      Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text("296\$",style: TextStyle(
                                color: Color(0xff052D76),
                                fontSize: 20,
                              ), ),

                              Text("/ night",style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                              ), ),
                              Spacer(),
                              Image.asset('images/stars.png',scale: 3,),

                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: displayHeight(context)*0.10,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Row(
                                children: [Text("Hotel Amenities", style: TextStyle(
                                  color: Color(0xff052D76),
                                  fontSize: 20,
                                ),)],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Row(
                                children: [
                                  Spacer(),
                                  Container(
                                    height: 50,
                                    width: displayWidth(context)*0.14,
                                    child: Column(children: [
                                      Icon(Icons.accessibility, color: Color(0xff052D76),),
                                      SizedBox(height: 5,),
                                      Text("Pool",style: TextStyle(
                                        color: Color(0xff052D76),
                                        fontSize:10,
                                      ),)
                                    ],),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 50,
                                    width: displayWidth(context)*0.14,
                                    child: Column(children: [
                                      Icon(Icons.wifi, color: Color(0xff052D76),),
                                      SizedBox(height: 5,),
                                      Text("Free WiFi",style: TextStyle(
                                          color: Color(0xff052D76),
                                          fontSize:10
                                      ),)
                                    ],),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 50,
                                    width: displayWidth(context)*0.14,
                                    child: Column(children: [
                                      Icon(Icons.air, color: Color(0xff052D76),),
                                      SizedBox(height: 5,),
                                      Text("AC",style: TextStyle(
                                          color: Color(0xff052D76),
                                          fontSize:10
                                      ),)
                                    ],),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 50,
                                    width: displayWidth(context)*0.14,
                                    child: Column(children: [
                                      Icon(Icons.class_, color: Color(0xff052D76),),
                                      SizedBox(height: 5,),
                                      Text("Bars",style: TextStyle(
                                          color: Color(0xff052D76),
                                          fontSize:10
                                      ),)
                                    ],),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 50,
                                    width: displayWidth(context)*0.14,
                                    child: Column(children: [
                                      Icon(Icons.star, color: Color(0xff052D76),),
                                      SizedBox(height: 5,),

                                      Text("SPA",style: TextStyle(
                                          color: Color(0xff052D76),
                                          fontSize:10
                                      ),)
                                    ],),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 50,
                                    width: displayWidth(context)*0.17,
                                    child: Column(children: [
                                      Icon(Icons.room_service, color: Color(0xff052D76),),
                                      SizedBox(height: 5,),
                                      Text("Room Service",style: TextStyle(
                                        color: Color(0xff052D76),
                                        fontSize:10,

                                      ),
                                      )
                                    ],),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),



                ],
              ),
              //SizedBox(height: displayHeight(context)*0.45,),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left:20.0),
                child: Row(
                  children: [
                    Text("Select your room", style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff052D76),
                    ),),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //SizedBox(height: displayHeight(context)*0.45,),
                    Card(
                      child: Container(
                        height: displayHeight(context)*0.34,
                        width: displayWidth(context)*0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),

                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                            Container(
                              height: displayHeight(context)*0.19,
                              width: displayWidth(context)*0.82,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(color: Colors.white),
                                image: DecorationImage(

                                    image: AssetImage('images/room1.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0, right: 20),
                              child: Row(
                                children: [
                                  Text("Juniour Suite Partial Sea View", style: TextStyle(
                                      color: Color(0xff052D76), fontSize: 14
                                  ),),
                                  Spacer(),
                                  //Image.asset('images/stars.png',scale: 3,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("\$148", style: TextStyle(
                                          color:Color(0xff052D76),
                                          fontSize: 12
                                      ),),
                                      // SizedBox(height: 10,),
                                      Text("Per room per night", style: TextStyle(
                                          color:Color(0xff052D76),
                                          fontSize: 12
                                      ),),

                                    ],
                                  ),
                                ],
                              ),
                            ),
                            //SizedBox(height: 10,),

                            Padding(
                              padding: const EdgeInsets.only(left:40.0),
                              child: Row(
                                children: [
                                  Text("\$468", style: TextStyle(
                                      color:Color(0xff052D76),
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 19
                                  ),),
                                  SizedBox(width: 10,),
                                  Text("\$296", style: TextStyle(
                                      color:Color(0xff052D76),
                                      fontSize: 30
                                  ),),
                                  // SizedBox(width: 50,),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20.0),
                                    child: RoundedButton(
                                      textColor: Colors.white,
                                      buttonColor:Color(0xff052D76),
                                      buttonWidth: 130,
                                      //buttonHeight: 10,
                                      title: "Book",
                                      onPressed: (){
                                        Navigator.pushNamed(context, ReserveRoom.id);
                                      },
                                    )
                                  )
                                ],
                              ),
                            )


                          ],
                        ),
                      ),

                    ),
                    SizedBox(height: 10,),

                    Card(
                      child: Container(
                        height: displayHeight(context)*0.34,
                        width: displayWidth(context)*0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),

                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                            Container(
                              height: displayHeight(context)*0.19,
                              width: displayWidth(context)*0.82,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(color: Colors.white),
                                image: DecorationImage(

                                    image: AssetImage('images/room1.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0, right: 20),
                              child: Row(
                                children: [
                                  Text("Juniour Suite Partial Sea View", style: TextStyle(
                                      color: Color(0xff052D76), fontSize: 14
                                  ),),
                                  Spacer(),
                                  //Image.asset('images/stars.png',scale: 3,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("\$148", style: TextStyle(
                                          color:Color(0xff052D76),
                                          fontSize: 12
                                      ),),
                                      // SizedBox(height: 10,),
                                      Text("Per room per night", style: TextStyle(
                                          color:Color(0xff052D76),
                                          fontSize: 12
                                      ),),

                                    ],
                                  ),
                                ],
                              ),
                            ),
                            //SizedBox(height: 10,),

                            Padding(
                              padding: const EdgeInsets.only(left:40.0),
                              child: Row(
                                children: [
                                  Text("\$468", style: TextStyle(
                                      color:Color(0xff052D76),
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 19
                                  ),),
                                  SizedBox(width: 10,),
                                  Text("\$296", style: TextStyle(
                                      color:Color(0xff052D76),
                                      fontSize: 30
                                  ),),
                                  // SizedBox(width: 50,),
                                  Spacer(),
                                  Padding(
                                      padding: const EdgeInsets.only(right: 20.0),
                                      child: RoundedButton(
                                        textColor: Colors.white,
                                        buttonColor:Color(0xff052D76),
                                        buttonWidth: 130,
                                        //buttonHeight: 10,
                                        title: "Book",
                                      )
                                  )
                                ],
                              ),
                            )


                          ],
                        ),
                      ),

                    ),
                    SizedBox(height: 10,),

                    Card(
                      child: Container(
                        height: displayHeight(context)*0.34,
                        width: displayWidth(context)*0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),

                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                            Container(
                              height: displayHeight(context)*0.19,
                              width: displayWidth(context)*0.82,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(color: Colors.white),
                                image: DecorationImage(

                                    image: AssetImage('images/room1.png'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0, right: 20),
                              child: Row(
                                children: [
                                  Text("Juniour Suite Partial Sea View", style: TextStyle(
                                      color: Color(0xff052D76), fontSize: 14
                                  ),),
                                  Spacer(),
                                  //Image.asset('images/stars.png',scale: 3,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("\$148", style: TextStyle(
                                          color:Color(0xff052D76),
                                          fontSize: 12
                                      ),),
                                      // SizedBox(height: 10,),
                                      Text("Per room per night", style: TextStyle(
                                          color:Color(0xff052D76),
                                          fontSize: 12
                                      ),),

                                    ],
                                  ),
                                ],
                              ),
                            ),
                            //SizedBox(height: 10,),

                            Padding(
                              padding: const EdgeInsets.only(left:40.0),
                              child: Row(
                                children: [
                                  Text("\$468", style: TextStyle(
                                      color:Color(0xff052D76),
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 19
                                  ),),
                                  SizedBox(width: 10,),
                                  Text("\$296", style: TextStyle(
                                      color:Color(0xff052D76),
                                      fontSize: 30
                                  ),),
                                  // SizedBox(width: 50,),
                                  Spacer(),
                                  Padding(
                                      padding: const EdgeInsets.only(right: 20.0),
                                      child: RoundedButton(
                                        textColor: Colors.white,
                                        buttonColor:Color(0xff052D76),
                                        buttonWidth: 130,
                                        //buttonHeight: 10,
                                        title: "Book",
                                      )
                                  )
                                ],
                              ),
                            )


                          ],
                        ),
                      ),

                    ),
                    SizedBox(height: 10,),
                  ],
                ),
              )

            ],
          ),
        )
      ),
    );
  }
}
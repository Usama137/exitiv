import 'dart:convert';

import 'package:exitiv/components/rounded_button.dart';
import 'package:exitiv/components/tracking_text_input.dart';
import 'package:flutter/material.dart';
import '../sizes_helpers.dart';
import 'package:http/http.dart' as http;


class ReserveRoom extends StatefulWidget {
  static const String id = 'reserve_room_screen';
  @override
  _ReserveRoomState createState() => _ReserveRoomState();
}

class _ReserveRoomState extends State<ReserveRoom> {
  Map<String, dynamic> paymentIntentData;

  String title;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        title: Text("Complete Reservation"),
          backgroundColor: Color(0xff052D76),

        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                padding: const EdgeInsets.only(left:20.0, top: 20, bottom: 20),
                child: Row(
                  children: [
                    Text(
                      "Review and reserve", style: TextStyle(
                      color: Color(0xff052D76),
                      fontSize: 28,
                    ),
                    ),
                  ],
                ),
              ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Container(
                    height: displayHeight(context)*0.19,
                    width: displayWidth(context)*0.99,
                    decoration: BoxDecoration(
                     // borderRadius: BorderRadius.circular(20.0),
                      //border: Border.all(color: Colors.white),
                      image: DecorationImage(

                          image: AssetImage('images/room1.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:20.0, top: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Riu Ocho Rios", style: TextStyle(
                            color: Color(0xff052D76),
                            fontSize: 22,
                          ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Juniour Suite Partial Sea View", style: TextStyle(
                            color: Color(0xff052D76),
                            fontSize: 15,
                          ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Check in: Fri, Oct 1", style: TextStyle(
                            color: Color(0xff052D76),
                            fontSize: 15,
                          ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Check-out: Sun, Oct 3", style: TextStyle(
                            color: Color(0xff052D76),
                            fontSize: 15,
                          ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                           children: [
                             Text("Cost",style: TextStyle(
                              color: Color(0xff052D76),
                    fontSize: 20,
                  ),),
                           ],
                       ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0, right: 12),
                          child: Row(
                            children: [
                              Text("1 room x 2 nights",style: TextStyle(
                                color: Color(0xff052D76),
                                fontSize: 15,
                              ),),
                              Spacer(),
                              Text("\$296",style: TextStyle(
                                color: Color(0xff052D76),
                                fontSize: 15,
                              ),),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left:12.0, right: 12),
                          child: Row(
                            children: [
                              Text("Taxes and Fees",style: TextStyle(
                                color: Color(0xff052D76),
                                fontSize: 15,
                              ),),
                              Spacer(),
                              Text("\$0",style: TextStyle(
                                color: Color(0xff052D76),
                                fontSize: 15,
                              ),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Divider(color:Color(0xff052D76),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0, right: 12, bottom: 12),
                          child: Row(
                            children: [
                              Text("Total",style: TextStyle(
                                color: Color(0xff052D76),
                                fontSize: 15,
                              ),),
                              Spacer(),
                              Text("\$296",style: TextStyle(
                                color: Color(0xff052D76),
                                fontSize: 15,
                              ),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  "One step closer to your  vacation!", style: TextStyle(
                  color: Color(0xff052D76),
                  fontSize: 20,
                ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Text("Room 1", style: TextStyle(
                        color: Color(0xff052D76),
                        fontSize: 16,
                      ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:20.0, right: 20, top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Container(
                        height: displayHeight(context)*0.06,
                        width: displayWidth(context)*0.42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color(0xff052D76))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: TrackingTextInput(
                            label: "First Name*",
                            colour: Colors.white,
                            onTextChanged: (String value) {
                              title = value;
                              print(title);
                            },
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: displayHeight(context)*0.06,
                        width: displayWidth(context)*0.42,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0xff052D76))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: TrackingTextInput(
                            label: "Last Name*",
                            colour: Colors.white,
                            onTextChanged: (String value) {
                              title = value;
                              print(title);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left:20.0, right: 20, top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Container(
                        height: displayHeight(context)*0.06,
                        width: displayWidth(context)*0.42,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0xff052D76))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: TrackingTextInput(
                            label: "First Name*",
                            colour: Colors.white,
                            onTextChanged: (String value) {
                              title = value;
                              print(title);
                            },
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: displayHeight(context)*0.06,
                        width: displayWidth(context)*0.42,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Color(0xff052D76))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: TrackingTextInput(
                            label: "Last Name*",
                            colour: Colors.white,
                            onTextChanged: (String value) {
                              title = value;
                              print(title);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 35.0),
                  child: Row(
                    children: [
                      Text("Special Requests", style: TextStyle(
                        color: Color(0xff052D76),
                        fontSize: 14,
                      ),),
                    ],
                  ),
                ),

                Container(
                  height: displayHeight(context)*0.15,
                  width: displayWidth(context)*0.84,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xff052D76))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          labelStyle: TextStyle(
                            color: Color(0xff080040),
                            fontSize: 12.0,
                          )),
                     // controller: _textController,

                      keyboardType: TextInputType.multiline,
                      minLines: 1,
                      maxLines: 5,

                      //maxLines: 4,

                      //validator: (value) {}
                    ),
                  ),
                ),

                RoundedButton(
                  textColor: Colors.white,
                  buttonColor:Color(0xff052D76),
                  buttonWidth: 300,
                  //buttonHeight: 10,
                  title: "Pay",
                  onPressed: ()async{

                  },
                ),

              ],
            ),
          ),
        ),
      ),
    );

  }




}



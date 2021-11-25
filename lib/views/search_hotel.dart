import 'dart:math';

import 'package:exitiv/components/rounded_button.dart';
import 'package:exitiv/sizes_helpers.dart';
import 'package:exitiv/views/search_results.dart';
import 'package:flutter/material.dart';
import 'package:exitiv/services/gethotelservice.dart';

class SearchHotel extends StatefulWidget {
  static const String id = 'searchHotel_screen';
  @override
  _SearchHotelState createState() => _SearchHotelState();
}

class _SearchHotelState extends State<SearchHotel> {


  int day1;
  int month1;
  int year1;

  int day2;
  int month2;
  int year2;

  DateTime startDate;
  DateTime endDate;
  DateTime date =DateTime.now();

  String dropdownvalue = '2 Adults, 1 Child';
  var items =  ['1 Adult','2 Adults, 1 Child','2 Adults, 2 Childern','Custom'];

  String roomValue='2 Rooms';
  var roomItems=['1 Room','2 Rooms','3 Rooms','Apartment'];


  Future<Null> selectTimePicker1(BuildContext context)async{
    final DateTime picked1=await showDatePicker(
      context:context,
      initialDate: date,
      firstDate: DateTime(2020),
      lastDate: DateTime(2025),
    );
    if(picked1!= null && picked1!=date){
      setState(() {
        startDate=picked1;
        day1=startDate.day;
        month1=startDate.month;
        year1=startDate.year;
      });
    }
  }

  Future<Null> selectTimePicker2(BuildContext context)async{
    final DateTime picked2=await showDatePicker(
      context:context,
      initialDate: date,
      firstDate: DateTime(2020),
      lastDate: DateTime(2025),
    );
    if(picked2!= null && picked2!=date){
      setState(() {
        endDate=picked2;
        day2=endDate.day;
        month2=endDate.month;
        year2=endDate.year;
      });
    }
  }





  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff052D76),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(110.0),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Color(0xff052D76),
            flexibleSpace: Container(
              height: displayHeight(context) * 0.12,
              width: double.infinity,
              //color: Color(0xff052D76),
              decoration: BoxDecoration(
                color: Color(0xff052D76),
                image: DecorationImage(
                  scale: 2,
                  image: AssetImage(
                    'images/logo2.png',
                  ),
                ),
              ),
            ),
          ),
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: Stack(
            children: [
              
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      //borderRadius: BorderRadius.circular(30),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ))),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Icon(Icons.clear, color: Colors.black54,size: 34,),
                          SizedBox(width:displayWidth(context)/3),
                          Text("Hotels", style: TextStyle(color: Color(0xff1460E1), fontSize: 22),)
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Card(
                      child: Container(
                        height: 50,
                        width: displayWidth(context)*0.9,
                        decoration: BoxDecoration(
                            color: Colors.white,
                           // border: Border.all(color: Color(0xff052D76)),
                            borderRadius: BorderRadius.circular(10),

                        ),
                        child: Row(
                          children: [

                            Spacer(),
                            Icon(Icons.location_on, color: Color(0xff052D76),size: 35,),

                            Spacer(),
                            Container(
                              width: displayWidth(context)*0.7,
                              height: 35,
                              child:  TextField(
                                //controller: emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    disabledBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,

                                    //labelText: 'Search Destination',
                                    //labelStyle: TextStyle(fontSize: 15),
                                    hintText: 'Enter Destination',
                                    hintStyle:
                                    TextStyle(color: Color(0xff1460E1), fontSize: 15)),
                                style: TextStyle(fontSize: 15),
                              ),
                            ),

                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Text("Check-in", style: TextStyle(
                          color: Color(0xff1460E1),
                          fontSize: 18
                        ),),
                      ],
                    ),
                    Card(
                      child: Container(
                        height: 50,
                        width: displayWidth(context)*0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // border: Border.all(color: Color(0xff052D76)),
                          borderRadius: BorderRadius.circular(10),

                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 20,),
                            Icon(Icons.arrow_downward, color: Color(0xff1460E1),),
                            MaterialButton(
                              onPressed: (){
                                selectTimePicker1(context);
                                

                              },
                                child: Icon(Icons.calendar_today, color: Color(0xff1460E1),)
                            ),
                            Text(day1.toString()),
                            Text("-"),
                            Text(month1.toString()),
                            Text("-"),
                            Text(year1.toString()),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Text("Check-out", style: TextStyle(
                            color: Color(0xff1460E1),
                            fontSize: 18
                        ),),
                      ],
                    ),
                    Card(
                      child: Container(
                        height: 50,
                        width: displayWidth(context)*0.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // border: Border.all(color: Color(0xff052D76)),
                          borderRadius: BorderRadius.circular(10),

                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 20,),
                            Icon(Icons.arrow_upward, color: Color(0xff1460E1),),
                            MaterialButton(
                                onPressed: (){
                                  selectTimePicker2(context);

                                },
                                child: Icon(Icons.calendar_today, color: Color(0xff1460E1),)
                            ),
                            Text(day2.toString()),
                            Text("-"),
                            Text(month2.toString()),
                            Text("-"),
                            Text(year2.toString()),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Spacer(),
                        Card(
                          child: Container(
                            height: 50,
                            width: displayWidth(context)*0.54,
                            child: Padding(
                              padding: const EdgeInsets.only(left:8.0, right: 8.0),
                              child: DropdownButton(
                                value: dropdownvalue,
                                icon: Icon(Icons.keyboard_arrow_down_outlined, color: Color(0xff1460E1),),
                                items:items.map((String items) {
                                  return DropdownMenuItem(
                                      value: items,
                                      child: Text(items)
                                  );
                                }
                                ).toList(),
                                onChanged: (String newValue){
                                  setState(() {
                                    dropdownvalue = newValue;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Card(
                          child: Container(
                            height: 50,
                            child: Padding(
                              padding: const EdgeInsets.only(left:8.0, right: 8.0),
                              child: DropdownButton(
                                value: roomValue,
                                icon: Icon(Icons.keyboard_arrow_down_outlined, color: Color(0xff1460E1),),
                                items:roomItems.map((String items) {
                                  return DropdownMenuItem(
                                      value: items,
                                      child: Text(items)
                                  );
                                }
                                ).toList(),
                                onChanged: (String newValue){
                                  setState(() {
                                    roomValue = newValue;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),

                    SizedBox(height: displayHeight(context)*0.25,),
                    RoundedButton(
                      buttonColor: Color(0xff052D76),
                      textColor: Colors.white,
                      title: 'Search',
                      buttonWidth: displayWidth(context) * 0.80,
                      onPressed: () {
                        //GetHotelService().getHotel();
                        Navigator.pushNamed(context, SearchResult.id);

                      },
                    ),





                  ],
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}




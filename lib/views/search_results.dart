import 'package:exitiv/sizes_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'hoteldetail.dart';

class SearchResult extends StatefulWidget {
  static const String id = 'searchResult_screen';
  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
         child: SingleChildScrollView(
           child: Column(
             children: [
               SizedBox(height: 20,),
               Padding(
                 padding: const EdgeInsets.all(12.0),
                 child: Row(
                   children: [
                     Icon(CupertinoIcons.square_stack_3d_down_right_fill, color:Color(0xff052D76),),
                     SizedBox(width: 20,),
                     Text("Ocho Rios, Saint Ann, Jamaica", style: TextStyle(
                         color:Color(0xff052D76),
                         fontSize: 20
                     ),)
                   ],
                 ),
               ),

               Padding(
                 padding: const EdgeInsets.all(12.0),
                 child: Row(
                   children: [
                     Icon(Icons.person, color:Color(0xff052D76),),
                     SizedBox(width: 10,),
                     Text("4 Guests", style: TextStyle(
                         color: Color(0xff052D76), fontSize: 15
                     ),),
                     Spacer(),
                     Icon(Icons.calendar_today,color:Color(0xff1460E1),),
                     SizedBox(width: 10,),
                     Text("25"),
                     Text("-"),
                     Text("10"),
                     SizedBox(width: 10,),
                     Text("to"),
                     SizedBox(width: 10,),
                     Text("28"),
                     Text("-"),
                     Text("10"),

                   ],
                 ),
               ),

               Card(
                 child: Container(
                   height: displayHeight(context)*0.33,
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

                               image: AssetImage('images/hotel_richo.jpeg'),
                               fit: BoxFit.cover),
                         ),
                       ),
                       SizedBox(height: 10),
                       Padding(
                         padding: const EdgeInsets.only(left: 30.0, right: 20),
                         child: Row(
                           children: [
                             Text("Riu Ocho Rios", style: TextStyle(
                                 color: Color(0xff052D76), fontSize: 25
                             ),),
                             Spacer(),
                             Image.asset('images/stars.png',scale: 3,),
                           ],
                         ),
                       ),
                       SizedBox(height: 10,),

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
                               child: Column(
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
                             )
                           ],
                         ),
                       )


                     ],
                   ),
                 ),

               ),
               SizedBox(height: 20,),
               GestureDetector(
                 onTap: (){
                   Navigator.pushNamed(context, HotelDetail.id);
                 },

                 child: Card(
                   child: Container(
                     height: displayHeight(context)*0.33,
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

                                 image: AssetImage('images/hotel_richo.jpeg'),
                                 fit: BoxFit.cover),
                           ),
                         ),
                         SizedBox(height: 10),
                         Padding(
                           padding: const EdgeInsets.only(left: 30.0, right: 20),
                           child: Row(
                             children: [
                               Text("Riu Ocho Rios", style: TextStyle(
                                   color: Color(0xff052D76), fontSize: 25
                               ),),
                               Spacer(),
                               Image.asset('images/stars.png',scale: 3,),
                             ],
                           ),
                         ),
                         SizedBox(height: 10,),

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
                                 child: Column(
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
                               )
                             ],
                           ),
                         )


                       ],
                     ),
                   ),

                 ),
               ),
               SizedBox(height: 20,),
               Card(
                 child: Container(
                   height: displayHeight(context)*0.33,
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

                               image: AssetImage('images/hotel_richo.jpeg'),
                               fit: BoxFit.cover),
                         ),
                       ),
                       SizedBox(height: 10),
                       Padding(
                         padding: const EdgeInsets.only(left: 30.0, right: 20),
                         child: Row(
                           children: [
                             Text("Riu Ocho Rios", style: TextStyle(
                                 color: Color(0xff052D76), fontSize: 25
                             ),),
                             Spacer(),
                             Image.asset('images/stars.png',scale: 3,),
                           ],
                         ),
                       ),
                       SizedBox(height: 10,),

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
                               child: Column(
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
                             )
                           ],
                         ),
                       )


                     ],
                   ),
                 ),

               ),
               SizedBox(height: 20,),
               Card(
                 child: Container(
                   height: displayHeight(context)*0.33,
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

                               image: AssetImage('images/hotel_richo.jpeg'),
                               fit: BoxFit.cover),
                         ),
                       ),
                       SizedBox(height: 10),
                       Padding(
                         padding: const EdgeInsets.only(left: 30.0, right: 20),
                         child: Row(
                           children: [
                             Text("Riu Ocho Rios", style: TextStyle(
                                 color: Color(0xff052D76), fontSize: 25
                             ),),
                             Spacer(),
                             Image.asset('images/stars.png',scale: 3,),
                           ],
                         ),
                       ),
                       SizedBox(height: 10,),

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
                               child: Column(
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
                             )
                           ],
                         ),
                       )


                     ],
                   ),
                 ),

               )
             ],
           ),
         ),
       ),


    );
  }
}

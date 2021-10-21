import 'package:exitiv/sizes_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  static const String id = 'search_screen';
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff052D76),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(245.0),
          child: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Color(0xff1460E1),
              flexibleSpace: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff1460E1),
                      image: DecorationImage(
                        image: AssetImage(
                          'images/logo2.png',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 110,
                    width: double.infinity,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20.0, right: 70, top: 10),
                      child: Text(
                        "Where is your next Vacation?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textScaleFactor: 2,
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: displayWidth(context)*0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: [

                        Spacer(),
                        Icon(Icons.search, color: Colors.blueGrey,size: 35,),

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
                                hintText: 'Search Destination',
                                hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15)),
                            style: TextStyle(fontSize: 15),
                          ),
                        ),

                        Spacer(),
                      ],
                    ),
                  ),
                ],
              )),
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
                    SizedBox(height: 15,),

                    Container(
                      height: displayHeight(context)*0.07,
                      width: double.infinity,

                      child: Row(
                        children: [
                          Spacer(),
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Color(0xff1460E1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: GestureDetector(
                              onTap: (){
                                //
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Icon(CupertinoIcons.square_stack_3d_down_right_fill, color:Colors.white,),
                                  SizedBox(height: 3,),
                                  Text("Hotels", style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),)
                                ],
                              ),

                            ),
                          ),
                          Spacer(),

                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Color(0xff1460E1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: GestureDetector(
                              onTap: (){
                                //
                              },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                    Icon(CupertinoIcons.airplane, color:Colors.white,),
                                    SizedBox(height: 3,),
                                    Text("Trips", style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),)
                                  ],
                                ),

                            ),
                          ),
                          Spacer(),

                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Color(0xff1460E1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: GestureDetector(
                              onTap: (){
                                //
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Icon(CupertinoIcons.car, color:Colors.white,),
                                  SizedBox(height: 3,),
                                  Text("Rental cars", style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),)
                                ],
                              ),

                            ),
                          ),
                          Spacer(),

                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Color(0xff1460E1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: GestureDetector(
                              onTap: (){
                                //
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Icon(CupertinoIcons.location_fill, color:Colors.white,),
                                  SizedBox(height: 3,),
                                  Text("Excursions", style: TextStyle(
                                    color: Colors.white,
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

                    SizedBox(height: 20,),

                    Container(
                      height: displayHeight(context)*0.18,
                      width: displayWidth(context)*0.9,
                      color: Color(0xff1460E1),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.arrow_forward_ios  , color: Colors.white,),
                                SizedBox(width: 12,),
                                Text(
                                  "Save upto 30%", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                                Spacer(),
                                Icon(Icons.clear, color: Colors.white,)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:40.0),
                            child: Text(
                              "Save upto 30% on your hotel stays when you book our flash sales", style: TextStyle(
                              color: Colors.white,
                              fontSize: 10
                            ),
                            textAlign: TextAlign.left,
                            textScaleFactor: 2,),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:40.0, top: 20),
                            child: Row(
                              children: [
                                Text(
                                  "CHECK THEM OUT!", style: TextStyle(
                                    color: Colors.lightBlueAccent,
                                    fontSize: 9
                                ),
                                  textAlign: TextAlign.left,
                                  textScaleFactor: 2,),
                              ],
                            ),
                          )
                        ],
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
             )


           ],
        ),
      ),
    );
  }
}

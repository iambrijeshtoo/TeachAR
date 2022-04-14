import 'package:flutter/material.dart';
import 'package:project/1stpage.dart';
import 'package:project/1stpage2nd.dart';
import 'package:project/1stpage3rd.dart';
import 'package:project/1stpage4th.dart';



class Intro extends StatelessWidget {
  const Intro({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 30,),
                              Text("Welcome", style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'circle'
                              ),),
                              Text("Jackson", style: TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'circle'
                              ),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 1,),
                Container(
                  height: 50,
                  width: 360,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[300].withOpacity(1.0), //color of shadow
                          spreadRadius: 1, //spread radius
                          blurRadius: 1, // blur radius
                          offset: Offset(0, 1), // changes position of shadow
                          //first paramerter of offset is left-right
                          //second parameter is top to down
                        ),
                      ]
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 30,
                        ), onPressed: () {  },
                      ),
                      Expanded(
                        child: TextField(
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'circe'
                          ),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search for Objects"
                          ),
                        ),)
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder: (context, animation, _) {
                                return ObjectDetail();
                              },
                              opaque: false));
                        },
                        child: Container(
                          child:Column(
                            children: [
                              Image.asset('images/jett.png',width: 130,height: 130,),
                              SizedBox(height:10 ,),
                              Text('Plane',style: TextStyle( fontSize: 20,fontWeight: FontWeight.bold),),
                            ],

                          ),

                          margin: EdgeInsets.only(top: 20),
                          width: 360,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            boxShadow:[
                              BoxShadow(
                                color: Colors.grey[300].withOpacity(1.0), //color of shadow
                                spreadRadius: 1, //spread radius
                                blurRadius: 1, // blur radius
                                offset: Offset(0, 1), // changes position of shadow
                                //first paramerter of offset is left-right
                                //second parameter is top to down
                              ),
                              //you can set more BoxShadow() here
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (context, animation, _) {
                          return ObjectDetail2();
                        },
                        opaque: false));
                  },
                  child: Container(
                    child:Column(
                      children: [
                        Image.asset('images/alien.png',width: 160,height: 130,),
                        SizedBox(height:10 ,),
                        Text('Alien',style: TextStyle( fontSize: 20,fontWeight: FontWeight.bold),),
                      ],

                    ),

                    margin: EdgeInsets.only(top: 20),
                    width: 360,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow:[
                        BoxShadow(
                          color: Colors.grey[300].withOpacity(1.0), //color of shadow
                          spreadRadius: 1, //spread radius
                          blurRadius: 1, // blur radius
                          offset: Offset(0, 1), // changes position of shadow
                          //first paramerter of offset is left-right
                          //second parameter is top to down
                        ),
                        //you can set more BoxShadow() here
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (context, animation, _) {
                          return ObjectDetail3();
                        },
                        opaque: false));
                  },
                  child: Container(
                    child:Column(
                      children: [
                        Image.asset('images/solar system.png',width: 130,height: 130,),
                        SizedBox(height:10 ,),
                        Text('Solar Planets',style: TextStyle( fontSize: 20,fontWeight: FontWeight.bold),),
                      ],

                    ),

                    margin: EdgeInsets.only(top: 20),
                    width: 360,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow:[
                        BoxShadow(
                          color: Colors.grey[300].withOpacity(1.0), //color of shadow
                          spreadRadius: 1, //spread radius
                          blurRadius: 1, // blur radius
                          offset: Offset(0, 1), // changes position of shadow
                          //first paramerter of offset is left-right
                          //second parameter is top to down
                        ),
                        //you can set more BoxShadow() here
                      ],
                    ),
                  ),
                ),

                InkWell(
                  onTap: (){
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (context, animation, _) {
                          return ObjectDetail4();
                        },
                        opaque: false));
                  },
                  child: Container(
                    child:Column(
                      children: [
                        Image.asset('images/chicken.png',width: 130,height: 130,),
                        SizedBox(height:10 ,),
                        Text('Chicken',style: TextStyle( fontSize: 20,fontWeight: FontWeight.bold),),
                      ],

                    ),

                    margin: EdgeInsets.only(top: 20),
                    width: 360,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow:[
                        BoxShadow(
                          color: Colors.grey[300].withOpacity(1.0), //color of shadow
                          spreadRadius: 1, //spread radius
                          blurRadius: 1, // blur radius
                          offset: Offset(0, 1), // changes position of shadow
                          //first paramerter of offset is left-right
                          //second parameter is top to down
                        ),
                        //you can set more BoxShadow() here
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

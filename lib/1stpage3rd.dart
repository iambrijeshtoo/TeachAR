import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:project/3dtwo.dart';
import 'package:project/arscreen3.dart';
import 'package:url_launcher/url_launcher.dart';


class ObjectDetail3 extends StatelessWidget {
  const ObjectDetail3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[100],
        leading: IconButton(icon:Icon(Icons.arrow_back_rounded),color: Colors.black,
          onPressed: () {Navigator.pop(context);},
        ),
      ),
      body: Object(),
    );
  }
}

class Object extends StatelessWidget {
  const Object({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(

      child: SingleChildScrollView(
        child: Column(

          children: [

            SizedBox(height: 10,),
            Container(
                padding: EdgeInsets.all(15),
                height:280,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
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
                child: Image.asset('images/solardetail.png')),
            SizedBox(height: 11,),

            Text('Description',
              style: TextStyle(fontSize: 30,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'circle'),),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(15),
              width: 300,
              height: 160,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow:[
                  BoxShadow(
                    color: Colors.grey[400].withOpacity(0.2), //color of shadow
                    spreadRadius: 1, //spread radius
                    blurRadius: 1, // blur radius
                    offset: Offset(0, 1), // changes position of shadow
                    //first paramerter of offset is left-right
                    //second parameter is top to down
                  ),
                  //you can set more BoxShadow() here
                ],
              ),
              child:
              SingleChildScrollView(
                child: Text("The Solar System formed 4.6 billion years ago from the gravitational collapse of a giant interstellar molecular cloud. The vast majority of the system's mass is in the Sun, with the majority of the remaining mass contained in Jupiter. The four inner system planets – Mercury, Venus, Earth and Mars – are terrestrial planets, being composed primarily of rock and metal. The four giant planets of the outer system are substantially more massive than the terrestrials. The two largest planets, Jupiter and Saturn, are gas giants, being composed mainly of hydrogen and helium; the next two, Uranus and Neptune, are ice giants, being composed mostly of substances with relatively high melting points compared with hydrogen and helium, called volatiles, such as water, ammonia and methane. All eight have nearly circular orbits that lie close to the plane of the Earth's orbit, called the ecliptic.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'circle',
                  ),
                ),
              ),

            ),
            SizedBox(height: 20,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: EdgeInsets.all(15),
                      width: 120,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow:[
                          BoxShadow(
                            color: Colors.grey[400].withOpacity(0.2), //color of shadow
                            spreadRadius: 1, //spread radius
                            blurRadius: 1, // blur radius
                            offset: Offset(0, 1), // changes position of shadow
                            //first paramerter of offset is left-right
                            //second parameter is top to down
                          ),
                          //you can set more BoxShadow() here
                        ],
                      ),
                      child: RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'circle',
                                    ),
                                    text: "Wiki "
                                ),
                                TextSpan(
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'circle',
                                      color: Colors.blue,
                                    ),
                                    text: "Click here",
                                    recognizer: TapGestureRecognizer()..onTap =  () async{
                                      var url = "https://en.wikipedia.org/wiki/Solar_System";
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    }
                                ),
                              ]
                          ))
                  ),
                  SizedBox(width: 30,),
                  Container(
                      padding: EdgeInsets.all(15),
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow:[
                          BoxShadow(
                            color: Colors.grey[400].withOpacity(0.2), //color of shadow
                            spreadRadius: 1, //spread radius
                            blurRadius: 1, // blur radius
                            offset: Offset(0, 1), // changes position of shadow
                            //first paramerter of offset is left-right
                            //second parameter is top to down
                          ),
                          //you can set more BoxShadow() here
                        ],
                      ),
                      child: RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'circle',
                                    ),
                                    text: "YouTube"
                                ),
                                TextSpan(
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'circle',
                                      color: Colors.blue,
                                    ),
                                    text: "Click here",
                                    recognizer: TapGestureRecognizer()..onTap =  () async{
                                      var url = "https://www.youtube.com/watch?v=libKVRa01L8&t=3s";
                                      if (await canLaunch(url)) {
                                        await launch(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    }
                                ),
                              ]
                          ))
                  ),
                ],
              ),
            ),

            SizedBox(height: 10,),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 140,
                    height: 50.0,
                    margin: EdgeInsets.all(10),
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      onPressed: () {Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (context, animation, _) {
                            return Alien3d();
                          },
                          opaque: false));},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xff9E9E9E), Color(0xffE0E0E0)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          constraints:
                          BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                          alignment: Alignment.center,
                          child: Text(
                            "View in 3D",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    width: 140,
                    height: 50.0,
                    margin: EdgeInsets.all(10),
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (__) => AugmentedImages()));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xff9E9E9E), Color(0xffE0E0E0)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          constraints:
                          BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                          alignment: Alignment.center,
                          child: Text(
                            "View in AR",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                      ),
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

import 'package:flutter/material.dart';
import 'package:project/homepage.dart';



class introsignup extends StatefulWidget {
  const introsignup({Key key}) : super(key: key);

  @override
  _introsignupState createState() => _introsignupState();
}

class _introsignupState extends State<introsignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/sideImg.png'),
                    fit: BoxFit.cover
                )
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.7,
            padding: EdgeInsets.symmetric(vertical: 60,horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("05:00 PM",style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'avenir',
                        fontWeight: FontWeight.w500
                    ),),
                    Expanded(
                      child: Container(),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/cloud.png'),
                              fit: BoxFit.contain
                          )
                      ),
                    ),
                    SizedBox(width: 5,),
                    Text("27 C", style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'avenir',
                        fontWeight: FontWeight.w800
                    ),)
                  ],
                ),
                Text("Aug 1, 2021 | Sunday", style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey
                ),),
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/logo.png'),
                                  fit: BoxFit.contain
                              )
                          ),
                        ),
                        Text("TeachAR", style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'ubuntu',
                            fontWeight: FontWeight.w600
                        ),),
                        SizedBox(height: 10,),
                        Text("Hi, \nSign Up. \nAnd Have Fun. \n\nJoin For Free", style: TextStyle(
                            color: Colors.grey
                        ),)
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (context, animation, _) {
                          return Intro();
                        },
                        opaque: false));
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Color(0xffffac30),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Sign Up", style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700
                          ),),
                          SizedBox(width: 4,),
                          Icon(Icons.arrow_forward, size: 17,)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text("Create an account", style: TextStyle(
                      fontSize: 16
                  ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
// void openHomePage()
// {
//   Navigator.pushNamed(context, '/Intro');
// }
}

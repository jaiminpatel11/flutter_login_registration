import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new SIGNUP(),
    );



  }
}


class SIGNUP extends StatefulWidget {
  @override
  _SIGNUPState createState() => _SIGNUPState();
}

class _SIGNUPState extends State<SIGNUP> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      resizeToAvoidBottomPadding: false,
      body: Column(
        children: <Widget>[
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20,100,0,0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text('Signup',
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 80,

                           ),),
                        ),
                        Container(
                          child: Text('.',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              fontSize: 80,

                            ),),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),




          Container(
            padding: EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Name',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                      )
                  ),

                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                      )
                  ),

                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                      )
                  ),

                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30, left: 20, right: 20),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                      )
                  ),

                )
              ],
            ),
          ),
          SizedBox(height: 40,),

          Container(

            height: 40,
            width: 100,
            child: Material(
              borderRadius: BorderRadius.circular(20.0),
              shadowColor: Colors.greenAccent,
              color: Colors.green,
              elevation: 7.0,
              child: GestureDetector(
                onTap: (){},
                child: Center(
                  child: Text('SIGNUP',
                    style: TextStyle(
                        color: Colors.white
                    ),),
                ),
              ),

            )
            ,

          ),

          SizedBox(height: 15,),
          Container(

            height: 40,
            width: 100,

            child: Material(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.teal
              ,


              elevation: 7.0,
              child: GestureDetector(
                onTap: (){},
                child: Center(
                  child: Text('Go back',
                    style: TextStyle(
                        color: Colors.black
                    ),),
                ),
              ),

            )
            ,

          ),




        ],
      ),

    );
  }
}

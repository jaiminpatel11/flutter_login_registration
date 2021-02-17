import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'signup.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,


      home: new MyHomeapage(),
    );
  }
}

class MyHomeapage extends StatefulWidget {
  @override
  _MyHomeapageState createState() => _MyHomeapageState();
}

class _MyHomeapageState extends State<MyHomeapage> {
  bool isHidenPassword = true;
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
                    padding: const EdgeInsets.fromLTRB(25, 150, 0, 0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Text('Hello', style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          child: Text('.',
                              style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold, color: Colors.green)),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 60, left: 20, right: 20),
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

                  padding: EdgeInsets.only(top: 25,left: 20,right: 20),
                  child: Column(

                    children: <Widget>[
                      TextField(


                        decoration: InputDecoration(

                          labelText: 'Password',
                          suffixIcon: InkWell(
                            onTap: _togglePasswordView,
                              child: Icon(Icons.visibility,
                          )),
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)
                          ),

                        ),
                        obscureText: isHidenPassword
                        ,
                      ),

                      SizedBox(height: 10,),
                      Container(
                        alignment: Alignment(1.0,0),
                        padding: EdgeInsets.only(top: 15.0,left: 20),
                        child: InkWell(
                          child: Text('Forgot Password',
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline
                            ),
                          ),
                        ),

                      ),
                      SizedBox(height: 70,),
                      Container(

                        height: 40,
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          shadowColor: Colors.greenAccent,
                          color: Colors.green,
                          elevation: 7.0,
                          child: GestureDetector(
                            onTap: (){},
                            child: Center(
                              child: Text('LOGIN',
                              style: TextStyle(
                                color: Colors.white
                              ),),
                            ),
                          ),

                        )
                        ,

                      ),
                      SizedBox(height: 40,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Don\'t Have An Account?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),


                          ),
                          SizedBox(width: 5,),
                          InkWell(
                            onTap: () {

                              Navigator.push(context, MaterialPageRoute(builder: (context)=>signup()));
                            },
                              child: Text('signup here',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline
                              ),)
                            ,
                          )

                        ],
                      )



                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _togglePasswordView(){
    if(isHidenPassword == true) {
      isHidenPassword = false;

    }else
      {
        isHidenPassword = true;

      }



  }
}

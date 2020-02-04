import 'package:flutter/material.dart';


class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        navigateToLastScreen();
      },
      
        child: Scaffold(
          backgroundColor: Colors.blueAccent[100],
          body: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.transparent,
            ),
            child: Padding(
              padding: EdgeInsets.all(23),
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 200,
                  ),
                  Form(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                          child: TextFormField(
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                labelText: 'Username',
                                labelStyle: TextStyle(
                                    fontSize: 15, color: Colors.white)),
                          ),
                        ),
                        TextFormField(
                          obscureText: true,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              labelText: 'Password',
                              labelStyle:
                                  TextStyle(fontSize: 15, color: Colors.white)),
                        ),
                        TextFormField(
                          obscureText: true,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              labelText: ' confirm Password',
                              labelStyle:
                                  TextStyle(fontSize: 15, color: Colors.white)),
                        )
                      ],
                    ),
                  ),
                  
                  
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: MaterialButton(
                      onPressed: () {},
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'SFUIDisplay',
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      color: Color(0xffff2d55),
                      elevation: 0,
                      minWidth: 350,
                      height: 60,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                  
                  
                ],
              ),
            ),
          ),
        )
        );
      
    
  }

  void navigateToLastScreen() {
    Navigator.pop(context);
  }
}

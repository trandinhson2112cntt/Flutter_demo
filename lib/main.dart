import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(title: 'Flutter Demo Home Page'),
      routes: {
        "/homescreen": (_) => new HomeScreen(),
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  void _goToHomeScreen(context){
    Navigator.pushReplacementNamed(
      context,"/homescreen"
    );
  }
  
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 50),
          color: Color.fromRGBO(0, 86, 215, 1),
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Row(
                    children: <Widget>[
                      Image(
                        image: AssetImage('images/Jira_logo.png'),
                        height: 50,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "JIRA",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ),
                SizedBox(
                    height: 350.0,
                    width: 350.0,
                    child: Carousel(
                      images: [
                        Image(
                          image: AssetImage('images/banner/banner1.png'),
                          fit: BoxFit.cover,
                        ),
                        Image(
                          image: AssetImage('images/banner/banner1.png'),
                          fit: BoxFit.cover,
                        ),
                        Image(
                          image: AssetImage('images/banner/banner1.png'),
                          fit: BoxFit.cover,
                        ),
                      ],
                      dotSize: 4.0,
                      dotSpacing: 15.0,
                      dotColor: Colors.lightGreenAccent,
                      indicatorBgPadding: 5.0,
                      dotBgColor: Colors.transparent,
                      borderRadius: true,
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: ButtonTheme(
                    minWidth: 250,
                    height: 30,
                    child: RaisedButton(
                      onPressed: () {
                        _goToHomeScreen(context);
                      },
                      child: Text('LOG IN',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Color.fromRGBO(23, 43, 77, 1))),
                      elevation: 3,
                      color: Colors.white,
                      padding: EdgeInsets.fromLTRB(35, 15, 35, 15),
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: ButtonTheme(
                    minWidth: 250,
                    height: 30,
                    child: RaisedButton(
                      onPressed: () {},
                      child: const Text('SIGN UP',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.white)),
                      elevation: 3,
                      color: Color.fromRGBO(0, 95, 237, 1),
                      padding: EdgeInsets.fromLTRB(35, 15, 35, 15),
                      shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          side: BorderSide(color: Colors.white, width: 3)),
                    ),
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.start,
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 40,
          color: Color.fromRGBO(0, 86, 215, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'By signing up, you agree to the',
                style: TextStyle(
                    fontSize: 14, color: Color.fromRGBO(179, 212, 255, 1)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'User Notice',
                    style: TextStyle(
                      color: Color.fromRGBO(179, 212, 255, 1),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Text(
                    ' and ',
                    style: TextStyle(
                      color: Color.fromRGBO(179, 212, 255, 1),
                    ),
                  ),
                  Text(
                    'Privacy Policy',
                    style: TextStyle(
                      color: Color.fromRGBO(179, 212, 255, 1),
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
                //'By signing up, you agree to the',
              ),
            ],
          ),
        ),
        resizeToAvoidBottomPadding: false);
  }
}

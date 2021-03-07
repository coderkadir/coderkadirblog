import 'package:blog/login.dart';
import 'package:blog/signin.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Coder Kadir Blog',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        home: HomePage());
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBEBEB),
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                color: Color(0xFF464646),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            height: MediaQuery.of(context).size.height / 1.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: 70,
                          child: Image.asset(
                            "assets/images/logo.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        "Coder Kadir",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "Hoşgeldin",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Blog dünyasına sende katıl",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ),
                Text(
                  "GİRİŞ YAP YA DA ÜYE OL",
                  style: TextStyle(color: Colors.white.withOpacity(0.4)),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              color: Color(0xFFEBEBEB),
              height: MediaQuery.of(context).size.height / 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                      style: ButtonStyle(),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (builder) => LoginScreen()));
                      },
                      child: Text(
                        "Giriş Yap",
                        style: TextStyle(
                            color: Color(0xff464646),
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (builder) => SignIn()));
                      },
                      child: Text(
                        "Üye Ol",
                        style: TextStyle(
                            color: Color(0xff464646),
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

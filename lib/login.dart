import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff464646),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                margin: EdgeInsets.only(bottom: 10),
                color: Color(0xff464646),
                height: MediaQuery.of(context).size.height / 5,
                child: Center(
                  child: TextButton(
                      style: ButtonStyle(),
                      onPressed: _login,
                      child: Text(
                        "Giriş Yap",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      )),
                )),
          ),
          Container(
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                color: Color(0xFFEBEBEB),
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
                            color: Color(0xff464646),
                            fontSize: 21,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(22),
                  child: Column(
                    children: [
                      TextField(
                          decoration: InputDecoration(
                              hintText: "Mail",
                              hintStyle:
                                  TextStyle(fontWeight: FontWeight.w700))),
                      TextField(
                          decoration: InputDecoration(
                              hintText: "Şifre",
                              hintStyle:
                                  TextStyle(fontWeight: FontWeight.w700))),
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

  void _login() {}
}

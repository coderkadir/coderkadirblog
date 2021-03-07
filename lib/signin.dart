import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd6d5d5),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                margin: EdgeInsets.only(bottom: 10),
                color: Color(0xffd6d5d5),
                height: MediaQuery.of(context).size.height / 5,
                child: Center(
                  child: TextButton(
                      style: ButtonStyle(),
                      onPressed: _login,
                      child: Text(
                        "Üye Ol",
                        style: TextStyle(
                            color: Colors.black54,
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(4),
                        child: CircleAvatar(
                            backgroundColor: Color(0xff464646),
                            radius: 60,
                            child: Icon(Icons.add_a_photo)),
                      ),
                      Text(
                        "Profil Fotoğrafını Seç",
                        style: TextStyle(
                            color: Color(0xff464646),
                            fontSize: 16,
                            fontWeight: FontWeight.w300),
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
                              hintText: "Ad Soyad",
                              hintStyle:
                                  TextStyle(fontWeight: FontWeight.w700))),
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
                      TextField(
                          decoration: InputDecoration(
                              hintText: "Şifreni Onayla",
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

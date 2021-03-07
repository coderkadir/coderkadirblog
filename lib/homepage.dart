import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMenuOpen = false;
  Color _backgroundColor = Color(0xff343442);
  Color _acikrenk = Color(0xffCBCBCB);
  final TextStyle menuStyle = TextStyle(
      fontSize: 20, color: Color(0xff343442), fontWeight: FontWeight.w800);
  var _height, _width;

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: _acikrenk,
      body: SafeArea(
        child: Stack(
          children: [backMenu(context), anaSayfa(context)],
        ),
      ),
    );
  }

  backMenu(BuildContext context) {
    return InkWell(
      splashColor: Colors.amber,
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        setState(() {
          isMenuOpen = false;
        });
      },
      child: Padding(
        child: Align(
          alignment: Alignment.centerLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Ana Sayfa",
                style: menuStyle,
              ),
              Text(
                "Profil",
                style: menuStyle,
              ),
              Text(
                "Çıkış Yap",
                style: menuStyle,
              ),
            ],
          ),
        ),
        padding: EdgeInsets.only(left: 20),
      ),
    );
  }

  anaSayfa(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 500),
      top: isMenuOpen == true ? 0.1 * _height : 0,
      bottom: isMenuOpen == true ? 0.1 * _width : 0,
      left: isMenuOpen == true ? 0.6 * _width : 0,
      right: isMenuOpen == true ? -0.2 * _width : 0,
      child: Material(
        elevation: 8,
        borderRadius: isMenuOpen == true
            ? BorderRadius.circular(20)
            : BorderRadius.circular(0),
        color: _backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (isMenuOpen == true) {
                            isMenuOpen = false;
                          } else {
                            isMenuOpen = true;
                          }
                        });
                      },
                      child: Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 26,
                      ),
                    ),
                    Text(
                      "Coder Kadir Blog",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300),
                    ),
                    Icon(
                      Icons.search,
                      size: 26,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

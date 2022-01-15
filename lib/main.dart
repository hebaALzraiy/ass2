import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal[900],
        appBar: AppBar(
          backgroundColor: Colors.teal[900],
          elevation: 0.0,
        ),
        drawer: Drawer(),
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 50.0),
                    child: Center(
                      child: Text(
                        "Browse",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 35.0),
                      ),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 10.0),
                    child: Center(
                      child: Text(
                        "Find prodcast the suit to your interset",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.w300,
                            fontSize: 12.0),
                      ),
                    )),
                Center(
                  child: Container(
                      width: 310,
                      height: 50,
                      margin: EdgeInsets.only(top: 40.0),
                      decoration: BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Type Keyword",
                            hintStyle: TextStyle(
                                fontSize: 13.0, color: Colors.white30),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 20.0)),
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(top: 90.0, left: 25.0, right: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 40,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10.0),
                              child: Text(
                                "Popular",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.0),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.trending_up,
                                color: Colors.orange,
                                size: 40,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10.0),
                              child: Text(
                                "Trending",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.0),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.av_timer,
                                color: Colors.orange,
                                size: 40,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10.0),
                              child: Text(
                                "Recent",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.0),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.bolt,
                                color: Colors.orange,
                                size: 40,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10.0),
                              child: Text(
                                "Magic",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13.0),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            BottomModal()
          ],
        ));
  }
}

class BottomModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.3,
        minChildSize: 0.1,
        maxChildSize: 1.0,
        builder: (context, ScrollController) {
          return SingleChildScrollView(
            controller: ScrollController,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 50.0),
                      child: Center(
                        child: Text(
                          "Handpicked",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey[850],
                              fontWeight: FontWeight.w400,
                              fontSize: 20.0),
                        ),
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 15.0),
                    height: 5,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.orange,
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 25.0, bottom: 20.0),
                            height: 100,
                            width: 90,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/img1.jpeg"),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                margin:
                                    EdgeInsets.only(left: 25.0, bottom: 15.0),
                                child: Text(
                                  "Finacial Freedom",
                                  style: TextStyle(
                                      color: Colors.grey[850],
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18.0),
                                ),
                              ),
                              Container(
                                margin:
                                    EdgeInsets.only(right: 30.0, bottom: 20.0),
                                child: Text(
                                  "Natasha Rose",
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15.0),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 25.0, bottom: 30.0),
                            height: 100,
                            width: 90,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/img3.jpeg"),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                margin:
                                    EdgeInsets.only(left: 25.0, bottom: 15.0),
                                child: Text(
                                  "Minimalism Lifestyle",
                                  style: TextStyle(
                                      color: Colors.grey[850],
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18.0),
                                ),
                              ),
                              Container(
                                margin:
                                    EdgeInsets.only(right: 100.0, bottom: 20.0),
                                child: Text(
                                  "June Rose",
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15.0),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 25.0, bottom: 20.0),
                            height: 100,
                            width: 90,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/img2.jpeg"),
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                margin:
                                    EdgeInsets.only(left: 25.0, bottom: 15.0),
                                child: Text(
                                  "Bisinis Strategy",
                                  style: TextStyle(
                                      color: Colors.grey[850],
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18.0),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 20.0),
                                child: Text(
                                  "Ronala Gooden",
                                  style: TextStyle(
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.w300,
                                      fontSize: 15.0),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                left: 25.0, top: 45.0, bottom: 20.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Top Auther",
                                style: TextStyle(
                                    color: Colors.grey[850],
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18.0),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 25.0, right: 25.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 45,
                                        backgroundImage:
                                            AssetImage("images/img5.jpeg"),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 20.0, bottom: 32.0),
                                        child: Text(
                                          "Natasha Rose",
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontWeight: FontWeight.w300,
                                              fontSize: 10.0),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 45,
                                        backgroundImage:
                                            AssetImage("images/img4.jpeg"),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 20.0, bottom: 32.0),
                                        child: Text(
                                          "June Rose",
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontWeight: FontWeight.w300,
                                              fontSize: 10.0),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 45,
                                        backgroundImage:
                                            AssetImage("images/img6.jpeg"),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            top: 20.0, bottom: 32.0),
                                        child: Text(
                                          "Ronala Gooden",
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontWeight: FontWeight.w300,
                                              fontSize: 10.0),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}

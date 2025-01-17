import 'dart:convert';

import 'package:cabzing/model/invoiceModel.dart';
import 'package:cabzing/screen/profilePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'explore.dart';
import 'homePage.dart';
import '../features/auth/screen/login.dart';
import 'notification.dart';

var userMap ;

var profileData;

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  final PageStorageBucket _bucket = PageStorageBucket();
  int _index = 0;
  Widget _currentScreen = HomepageView();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          extendBody: true,
          body: PageStorage(
              bucket: _bucket,
              child: _currentScreen),
          bottomNavigationBar: Container(

            width: w * .85,
            // height: 72,
            height: h * .12,
            color: Color(0xff000000),
            // decoration: BoxDecoration(
            //     boxShadow: [
            //       BoxShadow(
            //           color: Colors.black.withOpacity(.06),
            //           offset: const Offset(0, 4),
            //           blurRadius: 15,
            //           spreadRadius: 5),
            //     ],
            //     color: Color(0xff0133E3),
            //     borderRadius: BorderRadius.circular(10)
            // ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _index == 0?Padding(
                    padding: const EdgeInsets.all(7.0),
                    child:  MaterialButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () {
                          setState(() {
                            _index = 0;
                            _currentScreen = HomepageView();
                          });
                        },
                        minWidth: w * 0.1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/homeLogo.png",
                              height: h*0.08,
                              width: w*0.08,
                              color: Colors.white,
                            ),
                      Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 6,
                      )
                          ],
                        ),
                      ),
                  ):
                  MaterialButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        _index = 0;
                        _currentScreen = HomepageView();
                      });
                    },
                    minWidth: w * 0.1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/homeLogo.png",
                          height: h*0.08,
                          width: w*0.08,
                          color: Color(0xff323232),
                        ),
                      ],
                    ),
                  ),
                  _index == 1?Padding(
                    padding: const EdgeInsets.all(7.0),
                    child:  MaterialButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {
                        setState(() {
                          _index = 1;
                          _currentScreen = ExplorePage();
                        });
                      },
                      minWidth: w * 0.1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/explore.png",
                            height: h*0.08,
                            width: w*0.08,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.circle,
                            color: Colors.white,
                            size: 6,
                          )
                        ],
                      ),
                    ),
                  ):
                  MaterialButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        _index = 1;
                        _currentScreen = ExplorePage();
                      });
                    },
                    minWidth: w * 0.1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/explore.png",
                          height: h*0.08,
                          width: w*0.08,
                          color: Color(0xff323232),
                        ),
                      ],
                    ),
                  ),
                  _index == 2?Padding(
                    padding: const EdgeInsets.all(7.0),
                    child:  MaterialButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {
                        setState(() {
                          _index = 2;
                          _currentScreen = NotificationPage();
                        });
                      },
                      minWidth: w * 0.1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/notification.png",
                            height: h*0.08,
                            width: w*0.08,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.circle,
                            color: Colors.white,
                            size: 6,
                          )
                        ],
                      ),
                    ),
                  ):
                  MaterialButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        _index = 2;
                        _currentScreen = NotificationPage();
                      });
                    },
                    minWidth: w * 0.1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/notification.png",
                          height: h*0.08,
                          width: w*0.08,
                          color: Color(0xff323232),
                        ),
                      ],
                    ),
                  ),
                  _index == 3?Padding(
                    padding: const EdgeInsets.all(7.0),
                    child:  MaterialButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {
                        setState(() {
                          _index = 3;
                          _currentScreen = Profilepage();
                        });
                      },
                      minWidth: w * 0.1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/profile.png",
                            height: h*0.08,
                            width: w*0.08,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.circle,
                            color: Colors.white,
                            size: 6,
                          )
                        ],
                      ),
                    ),
                  ):
                  MaterialButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        _index = 3;
                        _currentScreen = Profilepage();
                      });
                    },
                    minWidth: w * 0.1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/profile.png",
                          height: h*0.08,
                          width: w*0.08,
                          color: Color(0xff323232),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ),
      )
    );
  }
}

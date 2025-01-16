import 'dart:async';

import 'package:cabzing/screen/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../features/auth/screen/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  getUser() async {
    final SharedPreferences localStorage =
    await SharedPreferences.getInstance();
    currentUserId = localStorage.getString('userID');
    token = localStorage.getString('token');

    setState(() {});
  }




  void initState() {
    getUser();
    Timer(Duration(seconds: 2), () {
      if (currentUserId == null) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ),
                (route) => false);
      } else {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => DashboardScreen(),
            ),
                (route) => false);
      }

      setState(() {});
    });
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.35,
                width:MediaQuery.of(context).size.width*0.45 ,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/logomain.png',
                        ),fit: BoxFit.contain
                    )
                ),

              ),
            ],
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

import 'login.dart';

class HomepageView extends StatefulWidget {
  const HomepageView({Key? key}) : super(key: key);

  @override
  State<HomepageView> createState() => _HomepageViewState();
}

class _HomepageViewState extends State<HomepageView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.only(left: 25, bottom: 0, top: 10, right: 25),
          child: Column(
            children: [
              Image(image: AssetImage('assets/mainLogo.png')),
              SizedBox(
                height: h*0.02,
              ),
              Image(image: AssetImage('assets/chart.png')),
            ],
          ),
        ),
      ),
    );
  }
}

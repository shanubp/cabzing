import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../features/auth/screen/login.dart';

class FilterList extends StatefulWidget {
  const FilterList({Key? key}) : super(key: key);

  @override
  State<FilterList> createState() => _FilterListState();
}

class _FilterListState extends State<FilterList> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        title: Text(
          'Filters',
          style: GoogleFonts.poppins(
              color: Colors.white, fontWeight: FontWeight.w400),
        ),
        actions: [
          Icon(
            CupertinoIcons.eye,
            color: Colors.blue,
          ),
          SizedBox(
            width: w * 0.05,
          ),
          Text(
            'Filter',
            style: GoogleFonts.poppins(color: Color(0xff0A9EF3)),
          ),
          SizedBox(
            width: w * 0.04,
          ),
        ],
      ),
      body: Column(
        children: [
          Divider(
            color: Color(0xff1C3347),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Container(
            height: h * 0.05,
            width: w * 0.4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xff08131E)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'This Month',
                  style: GoogleFonts.poppins(color: Colors.white),
                ),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  color: Colors.white,
                )
              ],
            ),
          ),
          SizedBox(
            height: h * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: h * 0.055,
                width: w * 0.42,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff1B2B30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: AssetImage('assets/calender.png'),
                      width: w * 0.08,
                    ),
                    Text(
                      '12/09/2023',
                      style: GoogleFonts.poppins(color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                height: h * 0.055,
                width: w * 0.42,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff1B2B30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: AssetImage('assets/calender.png'),
                      width: w * 0.08,
                    ),
                    Text(
                      '12/09/2023',
                      style: GoogleFonts.poppins(color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Divider(
            color: Color(0xff1C3347),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: h * 0.055,
                width: w * 0.28,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff0E75F4)),
                child: Center(
                  child: Text(
                    'Pending',
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                ),
              ),
              Container(
                height: h * 0.055,
                width: w * 0.28,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff1B2B30)),
                child: Center(
                  child: Text(
                    'Invoiced',
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                ),
              ),
              Container(
                height: h * 0.055,
                width: w * 0.28,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xff1B2B30)),
                child: Center(
                  child: Text(
                    'Cancelled',
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Container(
            padding: EdgeInsets.only(right: 10,left: 10),
              height: h * 0.07,
              width: w * 0.95,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff1C3347)),
                borderRadius: BorderRadius.circular(10),
                  color: Color(0xff08131E)
              ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Customer',style: GoogleFonts.poppins(
                  color: Colors.white
              ),),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Colors.white,
              )
            ],
          ),
          ),
          SizedBox(
            height: h*0.03,
          ),
          Container(
            height: h*0.001,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff08131E00),
                  Color(0xff1C3347),
                  Color(0xff08131E00),
                ],
              ),
            ),
          ),
          SizedBox(
            height: h*0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: h * 0.055,
                  width: w * 0.45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xff1B2B30)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'savad farooque',
                          style: GoogleFonts.poppins(color: Colors.white),
                        ),
                        Image(image: AssetImage('assets/remove.png'),width: w*0.04,)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

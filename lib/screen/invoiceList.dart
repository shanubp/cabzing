import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'filterList.dart';
import 'login.dart';

class InvoiceList extends StatefulWidget {
  const InvoiceList({Key? key}) : super(key: key);

  @override
  State<InvoiceList> createState() => _InvoiceListState();
}

class _InvoiceListState extends State<InvoiceList> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        backgroundColor: Colors.transparent,
        title: Text('Invoices',style: GoogleFonts.poppins(
          color: Colors.white,
            fontWeight: FontWeight.w400
        ),),
      ),
      body: Column(
        children: [
          Divider(
            color: Color(0xff1C3347),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: h * 0.07,
                width: w * 0.55,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff1C3347)
                  ),
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff08131E)
                ),
                child: TextFormField(
                  controller: search,
                  style: GoogleFonts.poppins(color: Colors.white),
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    prefixIcon: Icon(CupertinoIcons.search,
                      color: Color(0xff8A8A8A),),
                    labelText: 'Search',
                    labelStyle: GoogleFonts.poppins(
                      color: Color(0xff8A8A8A),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FilterList(),));
                },
                child: Container(
                  height: h * 0.07,
                  width: w * 0.35,
                  decoration: BoxDecoration(
                    color: Color(0xff1B2B30),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(image: AssetImage('assets/filter.png'),width: w*0.06,),
                      Text('Add Filters',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w400
                          )
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Divider(
            color: Color(0xff1C3347),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, bottom: 0, top: 14, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   RichText(text: TextSpan(
                               children: [
                                 TextSpan(
                                   text: '#',
                                   style: GoogleFonts.poppins(
                                     color: Color(0xff565656),
                                     fontWeight: FontWeight.w400,
                                       fontSize: 12
                                   )
                                 ),
                                 TextSpan(
                                     text: 'Invoice No',
                                     style: GoogleFonts.poppins(
                                         color: Colors.white,
                                         fontWeight: FontWeight.w400,
                                         // fontSize: 12
                                     )
                                 ),
                               ]
                             )),
                    Text('Pending',style:GoogleFonts.poppins(
                      color: Color(0xffE81C1C),
                      fontWeight: FontWeight.w400,
                      // fontSize: 12
                    ) ,)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Customer Name',style:GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      // fontSize: 12
                    ) ,),
                    RichText(text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'SAR. ',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff565656),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12
                              )
                          ),
                          TextSpan(
                              text: '10,000',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                // fontSize: 12
                              )
                          ),
                        ]
                    )),
                  ],
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(text: TextSpan(
                        children: [
                          TextSpan(
                              text: '#',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff565656),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12
                              )
                          ),
                          TextSpan(
                              text: 'Invoice No',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                // fontSize: 12
                              )
                          ),
                        ]
                    )),
                    Text('Invoiced',style:GoogleFonts.poppins(
                      color: Color(0xff1C60E2),
                      fontWeight: FontWeight.w400,
                      // fontSize: 12
                    ) ,)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Customer Name',style:GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      // fontSize: 12
                    ) ,),
                    RichText(text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'SAR. ',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff565656),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12
                              )
                          ),
                          TextSpan(
                              text: '10,000',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                // fontSize: 12
                              )
                          ),
                        ]
                    )),
                  ],
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(text: TextSpan(
                        children: [
                          TextSpan(
                              text: '#',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff565656),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12
                              )
                          ),
                          TextSpan(
                              text: 'Invoice No',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                // fontSize: 12
                              )
                          ),
                        ]
                    )),
                    Text('Cancelled',style:GoogleFonts.poppins(
                      color: Color(0xff7D7D7D),
                      fontWeight: FontWeight.w400,
                      // fontSize: 12
                    ) ,)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Customer Name',style:GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      // fontSize: 12
                    ) ,),
                    RichText(text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'SAR. ',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff565656),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12
                              )
                          ),
                          TextSpan(
                              text: '10,000',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                // fontSize: 12
                              )
                          ),
                        ]
                    )),
                  ],
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
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

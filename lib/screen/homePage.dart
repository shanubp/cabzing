import 'package:cabzing/features/auth/repository/auth_repository.dart';
import 'package:cabzing/screen/invoiceList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../features/auth/controller/auth_controller.dart';
import '../features/auth/screen/login.dart';
import 'dashboard.dart';

class HomepageView extends StatefulWidget {
  const HomepageView({Key? key}) : super(key: key);

  @override
  State<HomepageView> createState() => _HomepageViewState();
}

class _HomepageViewState extends State<HomepageView> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.only(left: 25, bottom: 0, top: 20, right: 25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage('assets/mainLogo.png'),width: w*0.4,),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: h*0.08,
                        width: w*0.2,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff141414),
                          image: DecorationImage(image:
                          NetworkImage(profileData['customer_data']['photo'].toString()))
                        ),
                      ),
                      Positioned(
                        left: 50,
                        bottom: 40,
                        child: Container(
                        height: h*0.04,
                        width: w*0.06,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffDB6E40)
                        ),
                      ),)
                    ],
                  )
                ],
              ),
              SizedBox(
                height: h*0.02,
              ),
              // Container(
              //   padding: EdgeInsets.all(10),
              //   decoration: BoxDecoration(
              //     color: Color(0xff0F0F0F),
              //     borderRadius: BorderRadius.circular(10)
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //      Column(
              //        crossAxisAlignment: CrossAxisAlignment.start,
              //        children: [
              //          RichText(text: TextSpan(
              //            children: [
              //              TextSpan(
              //                text: 'SAR ',
              //                style: GoogleFonts.poppins(
              //                  color: Color(0xff565656),
              //                  fontWeight: FontWeight.w400,
              //                    fontSize: 12
              //                )
              //              ),
              //              TextSpan(
              //                  text: '2,78,000.00',
              //                  style: GoogleFonts.poppins(
              //                      color: Colors.white,
              //                      fontWeight: FontWeight.w400,
              //                      // fontSize: 12
              //                  )
              //              ),
              //            ]
              //          )),
              //          RichText(text: TextSpan(
              //              children: [
              //                TextSpan(
              //                    text: '+21% ',
              //                    style: GoogleFonts.poppins(
              //                        color: Colors.green,
              //                        fontWeight: FontWeight.w400,
              //                        fontSize: 10
              //                    )
              //                ),
              //                TextSpan(
              //                    text: 'than last month.',
              //                    style: GoogleFonts.poppins(
              //                        color: Color(0xff565656),
              //                        fontWeight: FontWeight.w400,
              //                        fontSize: 12
              //                    )
              //                )
              //              ]
              //          ))
              //        ],
              //      ),
              //       Text('Revenue',style: GoogleFonts.poppins(
              //           fontWeight: FontWeight.w400,color: Colors.white),)
              //     ],
              //   ),
              // ),
              Image(image: AssetImage('assets/chart.png'),
              // height: h*0.5,
              ),
              SizedBox(
                height: h*0.02,
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: h * 0.14,
                // width: w * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff0F0F0F)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: h * 0.12,
                          width: w*0.1,
                          decoration: BoxDecoration(
                            color: Color(0xffF6EFED),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/bookingimg.png'),
                                width: w*0.05,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: w*0.02,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Bookings',style: GoogleFonts.poppins(
                                color: Colors.white
                            ),),
                            Text('123',style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 25
                            ),),
                            Text('Reserved',style: GoogleFonts.poppins(
                              color: Color(0xff565656),
                              fontWeight: FontWeight.w400,
                            ),),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: h * 0.1,
                      width: w*0.22,
                      decoration: BoxDecoration(
                        color: Color(0xff131313),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(CupertinoIcons.arrow_right,color: Colors.white,),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: h*0.01,
              ),
                   GestureDetector(
                   onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => InvoiceList(),));
                   },
                   child: Container(
                     padding: EdgeInsets.all(10),
                     height: h * 0.14,
                     // width: w * 0.4,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color: Color(0xff0F0F0F)
                     ),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             Container(
                               height: h * 0.12,
                               width: w*0.1,
                               decoration: BoxDecoration(
                                 color: Color(0xffA9C9C5),
                                 borderRadius: BorderRadius.circular(30),
                               ),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Image(
                                       image: AssetImage('assets/moneybag.png'),
                                       width: w*0.05
                                   ),
                                 ],
                               ),
                             ),
                             SizedBox(
                               width: w*0.02,
                             ),
                             Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text('Invoices',style: GoogleFonts.poppins(
                                     color: Color(0xffA9C9C5)
                                 ),),
                                 Text('10,232.00',style: GoogleFonts.poppins(
                                     color: Colors.white,
                                     fontWeight: FontWeight.w400,
                                     fontSize: 25
                                 ),),
                                 Text('Rupees',style: GoogleFonts.poppins(
                                   color: Color(0xff565656),
                                   fontWeight: FontWeight.w400,
                                 ),),
                               ],
                             ),
                           ],
                         ),
                         Container(
                           height: h * 0.1,
                           width: w*0.22,
                           decoration: BoxDecoration(
                             color: Color(0xff131313),
                             borderRadius: BorderRadius.circular(20),
                           ),
                           child: Icon(CupertinoIcons.arrow_right,color: Colors.white,),
                         )
                       ],
                     ),
                   ),
                 )
            ],
          ),
        ),
      ),
    );
  }
}

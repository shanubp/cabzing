import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({Key? key}) : super(key: key);

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: EdgeInsets.only(left: 20, bottom: 0, top: 20, right: 20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 10,bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff0F0F0F),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: h * 0.1,
                        width: w*0.2,
                        decoration: BoxDecoration(
                          color: Color(0xff000000),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Column(
                        children: [
                          Text('David Arnold',style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20
                          ),),
                          Text('david012@cabzing',style: GoogleFonts.poppins(
                              color: Color(0xffB5CDFE),
                              fontWeight: FontWeight.w400,
                          ),),
                        ],
                      ),
                      Image(image: AssetImage('assets/editpen.png'),width: w*0.06,)
                    ],
                  ),
                  SizedBox(
                    height: h*0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        height: h * 0.12,
                        width: w * 0.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff000000)
                        ),
                       child: Row(
                         children: [
                           Container(
                             height: h * 0.1,
                             width: w*0.1,
                             decoration: BoxDecoration(
                               color: Color(0xffB5CDFE),
                               borderRadius: BorderRadius.circular(30),
                             ),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Image(
                                   image: AssetImage('assets/stars.png'),width: w*0.05,
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
                               Row(
                                 children: [
                                   Text('4.3',style: GoogleFonts.poppins(
                                       color: Colors.white
                                   ),),
                                   Image(image: AssetImage('assets/ratingstar.png'),width: w*0.025,),
                                 ],
                               ),
                               Text('2,211',style: GoogleFonts.poppins(
                                   color: Color(0xff565656),
                                   fontWeight: FontWeight.w400,
                                   fontSize: 12
                               ),),
                               Text('riders',style: GoogleFonts.poppins(
                                 color: Color(0xffB5CDFE),
                                 fontWeight: FontWeight.w400,
                               ),),
                             ],
                           ),
                         ],
                       ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        height: h * 0.12,
                        width: w * 0.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff000000)
                        ),
                      child: Row(
                        children: [
                          Container(
                            height: h * 0.1,
                            width: w*0.1,
                            decoration: BoxDecoration(
                              color: Color(0xffA9C9C5),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/verified.png'),width: w*0.05,
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
                              Row(
                                children: [
                                  Text('KYC',style: GoogleFonts.poppins(
                                      color: Colors.white
                                  ),),
                                  Image(image: AssetImage('assets/verifiedtick.png'),width: w*0.025,),
                                ],
                              ),
                              Text('Verified',style: GoogleFonts.poppins(
                                color: Color(0xffA9C9C5),
                                fontWeight: FontWeight.w400,
                              ),),
                            ],
                          ),
                        ],
                      ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h*0.02,
                  ),
                  Container(
                    height: h * 0.08,
                    width: w * 0.8,
                    decoration: BoxDecoration(
                      color: Color(0xff040404),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage('assets/logout.png'),width: w*0.06,),
                        SizedBox(
                          width: w*0.015,
                        ),
                        Text('Logout',style: GoogleFonts.poppins(
                          color: Color(0xffEA6262),
                          fontWeight: FontWeight.w400
                        ),)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: h*0.04,
            ),
            Container(
              padding: EdgeInsets.only(left: 15,right: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(image: AssetImage('assets/question.png'),width: w*0.08,),
                          SizedBox(
                            width: w*0.04,
                          ),
                          Text('Help',style: GoogleFonts.poppins(
                              color: Color(0xffF6F6F6),
                              fontWeight: FontWeight.w400,
                          ),),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios,color: Colors.white,size: 17)
                    ],
                  ),
                  SizedBox(
                    height: h*0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(image: AssetImage('assets/faq.png'),width: w*0.08,),
                          SizedBox(
                            width: w*0.04,
                          ),
                          Text('FAQ',style: GoogleFonts.poppins(
                              color: Color(0xffF6F6F6),
                              fontWeight: FontWeight.w400,
                          ),),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios,color: Colors.white,size: 17,)
                    ],
                  ),
                  SizedBox(
                    height: h*0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(image: AssetImage('assets/addperson.png'),width: w*0.08,),
                          SizedBox(
                            width: w*0.04,
                          ),
                          Text('Invite Friends',style: GoogleFonts.poppins(
                              color: Color(0xffF6F6F6),
                              fontWeight: FontWeight.w400,
                          ),),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios,color: Colors.white,size: 17)
                    ],
                  ),
                  SizedBox(
                    height: h*0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(image: AssetImage('assets/terms.png'),width: w*0.08,),
                          SizedBox(
                            width: w*0.04,
                          ),
                          Text('Terms of service',style: GoogleFonts.poppins(
                              color: Color(0xffF6F6F6),
                              fontWeight: FontWeight.w400,
                          ),),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios,color: Colors.white,size: 17)
                    ],
                  ),
                  SizedBox(
                    height: h*0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image(image: AssetImage('assets/privacypolicy.png'),width: w*0.08,),
                          SizedBox(
                            width: w*0.04,
                          ),
                          Text('Privacy Policy',style: GoogleFonts.poppins(
                              color: Color(0xffF6F6F6),
                              fontWeight: FontWeight.w400,
                          ),),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios,color: Colors.white,size: 17)
                    ],
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}

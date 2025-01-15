import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mabzing/screen/dashboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

var h;
var w;

class _LoginPageState extends State<LoginPage> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  bool show = false;
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              actions: [
                Image(
                  image: AssetImage('assets/language.png'),
                  height: h * 0.03,
                ),
                Text(
                  'English',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400, color: Colors.white),
                ),
                SizedBox(
                  width: w * 0.06,
                )
              ],
            ),
            backgroundColor: Colors.transparent,
            body: Padding(
              padding:
                  EdgeInsets.only(left: 25, bottom: 0, top: h * 0.1, right: 25),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Login',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 18),
                    ),
                    Text(
                      'Login to your vikn account',
                      style: GoogleFonts.poppins(
                          color: Color(0xff838383),
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: h * 0.04,
                    ),
                    Container(
                      // height: h*0.2,
                      decoration: BoxDecoration(
                          color: Color(0xff08131E),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color(0xff1C3347))),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: name,
                            style: GoogleFonts.poppins(color: Colors.white),
                            decoration: InputDecoration(
                                // hintText: 'Username',
                                //   hintStyle: GoogleFonts.poppins(
                                //     color: Colors.white
                                //   ),
                                labelText: 'Username',
                                labelStyle:
                                    GoogleFonts.poppins(color: Colors.white),
                                prefixIcon: Icon(
                                  CupertinoIcons.person,
                                  color: Colors.blue,
                                ),
                                // Image(
                                //   image: AssetImage('assets/person.png'),
                                // ),
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none),
                          ),
                          Divider(
                            color: Color(0xff1C3347),
                          ),
                          TextFormField(
                            controller: password,
                            obscureText: show ? true : false,
                            style: GoogleFonts.poppins(color: Colors.white),
                            decoration: InputDecoration(
                                labelText: 'Password',
                                labelStyle:
                                    GoogleFonts.poppins(color: Colors.white),
                                prefixIcon: Icon(
                                  Icons.key,
                                  color: Colors.blue,
                                ),
                                // Image(
                                //   image: AssetImage('assets/key.png'),
                                // ),
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                suffixIcon: InkWell(
                                    onTap: () {
                                      show = !show;
                                      setState(() {});
                                    },
                                    child: show
                                        ? Icon(
                                            CupertinoIcons.eye,
                                            color: Colors.blue,
                                          )
                                        : Icon(
                                            CupertinoIcons.eye_slash_fill,
                                            color: Colors.blue,
                                          ))),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.04,
                    ),
                    Text(
                      'Forgotten Password?',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff0A9EF3)),
                    ),
                    SizedBox(
                      height: h * 0.07,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DashboardScreen(),));
                      },
                      child: Container(
                        height: h * 0.08,
                        width: w * 0.4,
                        decoration: BoxDecoration(
                            color: Color(0xff0E75F4),
                            borderRadius: BorderRadius.circular(50)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Sign in',
                              style: GoogleFonts.poppins(
                                  color: Colors.white, fontSize: 20),
                            ),
                            Icon(
                              CupertinoIcons.arrow_right,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.2,
                    ),
                    Text(
                      'Don’t have an Account?',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400, color: Colors.white),
                    ),
                    Text(
                      'Sign up now!',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff0A9EF3)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

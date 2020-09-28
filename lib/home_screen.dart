import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Hexcolor('#F5F5D6'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SvgPicture.asset('assets/logo.svg'),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 0,
                    spreadRadius: 0,
                    offset: Offset(5, 3))
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70), topRight: Radius.circular(70)),
            ),
            height: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Hi There',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Hexcolor('#707070')),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      'Joining us is really easy!',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Hexcolor('#707070')),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Hexcolor('#FB4E4F')),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset('assets/call_icon.svg'),
                          // SizedBox(
                          //   width: 10.0,
                          // ),
                          Text('Connect with phone number',
                              style: TextStyle(
                                  color: Hexcolor('#F8F8F8'),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w800))
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Hexcolor('#4072A4')),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset('assets/fb_icon.svg'),
                          Text('Connect with Facebook',
                              style: TextStyle(
                                  color: Hexcolor('#F8F8F8'),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w800))
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/location');
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Hexcolor('#2AC769')),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset('assets/facebook.svg'),
                            // SizedBox(
                            //   width: 10.0,
                            // ),
                            Text('Connect with Google',
                                style: TextStyle(
                                    color: Hexcolor('#F8F8F8'),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w800))
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Hexcolor('#F5F5D6'),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset('assets/logo_2.svg'),
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
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70)),
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
                        'Enable your location',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Hexcolor('#707070')),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        'To enable you with delivery services,',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Hexcolor('#707070')),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        'we want to know your current location.',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Hexcolor('#707070')),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Hexcolor('#FB4E4F')),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/profile.png'),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text('Use current location',
                              style: TextStyle(
                                  color: Hexcolor('#F8F8F8'),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w800))
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/delivery');
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey, offset: Offset(0, 2))
                            ],
                            borderRadius: BorderRadius.circular(8.0),
                            color: Hexcolor('#F8F8F8')),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Skip for now',
                                style: TextStyle(
                                    color: Hexcolor('#707070'),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w800)),
                          ],
                        ),
                      ),
                    ),
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

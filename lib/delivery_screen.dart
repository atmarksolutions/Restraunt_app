import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class DeliveryPage extends StatefulWidget {
  @override
  _DeliveryPageState createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  modalSheet() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
        ),
        builder: (context) {
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              height: MediaQuery.of(context).size.height * 0.5,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16.0, right: 16.0, top: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Chicken Burger',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16.0, right: 16.0, top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          '\$12',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16.0, right: 16.0, top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Qty'),
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Colors.grey,
                          ),
                          height: 20,
                          width: 20,
                          child: Center(child: Text('-')),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('1'),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Colors.red,
                          ),
                          height: 20,
                          width: 20,
                          child: Center(child: Text('+')),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16.0, right: 16.0, top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Size'),
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Colors.grey,
                          ),
                          height: 20,
                          width: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Colors.grey,
                          ),
                          height: 20,
                          width: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Colors.grey,
                          ),
                          height: 20,
                          width: 20,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16.0, right: 16.0, top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Total'), Text('\$12')],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0, right: 30.0),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Hexcolor('#FB4E44')),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/facebook.svg'),
                            Text('Add to Cart',
                                style: TextStyle(
                                    color: Hexcolor('#F8F8F8'),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w800))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Hexcolor('#F5F5D6'),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery to',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Image.asset('assets/profile.png')
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
            child: Text('Baneshwor, Kathmandu'),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for your favorite dish',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text('View More', style: TextStyle(color: Colors.red)),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
            child: Container(
              color: Colors.black,
              height: 260,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 16.0, left: 16.0, right: 16.0, bottom: 16.0),
                    child: Container(
                      color: Colors.red,
                      width: 200,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 16.0, left: 16.0, right: 16.0, bottom: 16.0),
                    child: Container(
                      color: Colors.blue,
                      width: 200,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 16.0, left: 16.0, right: 16.0, bottom: 16.0),
                    child: Container(
                      color: Colors.green,
                      width: 200,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 16.0, left: 16.0, right: 16.0, bottom: 16.0),
                    child: Container(
                      color: Colors.grey,
                      width: 200,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text('Show All', style: TextStyle(color: Colors.red)),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/all dishes');
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    color: Colors.cyan,
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  color: Colors.indigo,
                ),
                Container(
                  height: 40,
                  width: 40,
                  color: Colors.amber,
                ),
                Container(
                  height: 40,
                  width: 40,
                  color: Colors.pink,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommended',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text('Show All', style: TextStyle(color: Colors.red)),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
            child: Container(
              color: Colors.black,
              height: 260,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: () {
                      modalSheet();
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 16.0, left: 16.0, right: 16.0, bottom: 16.0),
                      child: Container(
                        color: Colors.grey,
                        width: 200,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 16.0, left: 16.0, right: 16.0, bottom: 16.0),
                    child: Container(
                      color: Colors.yellow,
                      width: 200,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 16.0, left: 16.0, right: 16.0, bottom: 16.0),
                    child: Container(
                      color: Colors.purple,
                      width: 200,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 16.0, left: 16.0, right: 16.0, bottom: 16.0),
                    child: Container(
                      color: Colors.teal,
                      width: 200,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

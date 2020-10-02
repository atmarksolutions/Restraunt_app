import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AllDishes extends StatefulWidget {
  @override
  _AllDishesState createState() => _AllDishesState();
}

class _AllDishesState extends State<AllDishes> {
  Widget dishList(
      String imgPath, String dishName, String dishDetail, num price) {
    return Padding(
      padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
      child: Card(
        elevation: 5,
        color: Colors.white,
        child: Container(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 60,
                child: Image.asset(
                  imgPath,
                  fit: BoxFit.cover,
                ),
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    dishName,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                        fontSize: 18),
                  ),
                  Text(dishDetail),
                ],
              ),
              Spacer(),
              Container(
                height: 30,
                width: 30,
                color: Colors.grey[300],
                child: Center(child: Text("\$ $price")),
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Hexcolor('#F5F5D6'),
        body: ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
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
              child: Text(
                'All Dishes',
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.grey),
              ),
            ),
            dishList('assets/profile.png', 'dishName', 'dishDetail', 10),
            dishList('assets/profile.png', 'dishName', 'dishDetail', 10),
            dishList('assets/profile.png', 'dishName', 'dishDetail', 10),
            dishList('assets/profile.png', 'dishName', 'dishDetail', 10),
            dishList('assets/profile.png', 'dishName', 'dishDetail', 10),
            dishList('assets/profile.png', 'dishName', 'dishDetail', 10),
          ],
        ),
      ),
    );
  }
}

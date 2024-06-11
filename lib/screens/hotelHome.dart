import 'package:flutter/material.dart';
import 'package:foodshare/configs/constants.dart';
import 'package:foodshare/screens/hotelDisplay.dart';
import 'package:foodshare/screens/hotelHistory.dart';
import 'package:foodshare/screens/hotelNew.dart';






class HotelHomePage extends StatefulWidget {
  @override
  _HotelHomePageState createState() => _HotelHomePageState();
}

class _HotelHomePageState extends State<HotelHomePage> {
  List<Map<String, String>> foods = [
    {"name": "Pizza", "image": "assets/images/pizza.png", "date": "2024-06-01"},
    {"name": "Burger", "image": "assets/images/burger.png", "date": "2024-06-02"},
  ];

  void deleteFood(int index) {
    setState(() {
      foods.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hotel Food Management'),
        backgroundColor: primaryColor,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewFoodPage()),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.history),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HistoryPage(foods: foods)),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: foods.length,
        itemBuilder: (context, index) {
          return FoodCard(
            food: foods[index],
            onDelete: () => deleteFood(index),
          );
        },
      ),
    );
  }
}

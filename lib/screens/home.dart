import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:foodshare/configs/constants.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> foodItems = [
    {
      'foodImage': 'assets/images/pizza.png',
      'foodName': 'Pizza',
      'hotelName': 'Hotel A',
      'closingHours': '10:00 PM',
    },
    {
      'foodImage': 'assets/images/burger.png',
      'foodName': 'Burger',
      'hotelName': 'Hotel B',
      'closingHours': '11:00 PM',
    },
    {
      'foodImage': 'assets/images/burger.png',
      'foodName': 'Burger',
      'hotelName': 'Hotel B',
      'closingHours': '11:00 PM',
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100), 
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: primaryColor.withOpacity(0.8),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 5),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 30),
                  title: Text(
                    'Hello ${ 'User'}!',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: Colors.white),
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 40,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      
                    },
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Two cards per row
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 3 / 3, // Adjust the aspect ratio as needed
          ),
          itemCount: foodItems.length,
          itemBuilder: (context, index) {
            final foodItem = foodItems[index];
            return FoodCard(
              foodImage: foodItem['foodImage']!,
              foodName: foodItem['foodName']!,
              hotelName: foodItem['hotelName']!,
              closingHours: foodItem['closingHours']!,
              onClaim: () {
                
                print('Claimed ${foodItem['foodName']}');
              },
            );
          },
        ),
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  final String foodImage;
  final String foodName;
  final String hotelName;
  final String closingHours;
  final VoidCallback onClaim;

  FoodCard({
    required this.foodImage,
    required this.foodName,
    required this.hotelName,
    required this.closingHours,
    required this.onClaim,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: LinearGradient(
            colors: [primaryColor, appOrangeColor.withOpacity(0.7)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  foodImage,
                  height: 60,
                  width: 60,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Food: $foodName',
                style: TextStyle(
                  color: appwhiteColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Hotel: $hotelName',
                style: TextStyle(
                  color: appwhiteColor,
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Closing Hours: $closingHours',
                style: TextStyle(
                  color: appwhiteColor,
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: onClaim,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: appOrangeColor,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    textStyle: TextStyle(fontSize: 12),
                  ),
                  child: Text('Claim'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:foodshare/screens/addingHotel.dart';
import 'package:foodshare/screens/displayInfo.dart';


class AdminHomePage extends StatefulWidget {
  @override
  _AdminHomePageState createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  
  List<Map<String, String>> hotels = [
    {"name": "Panari", "location": "General Motors rd", "closingHours": "10 PM"},
    {"name": "Weston", "location": "Lang'ata", "closingHours": "11 PM"},
  ];

  void deleteHotel(int index) {
    setState(() {
      hotels.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ADMIN'),
      ),
      body: ListView.builder(
        itemCount: hotels.length,
        itemBuilder: (context, index) {
          return HotelCard(
            hotel: hotels[index],
            onDelete: () => deleteHotel(index),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddHotelPage()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

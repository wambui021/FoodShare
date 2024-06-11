import 'package:flutter/material.dart';
import 'package:foodshare/configs/constants.dart';

class HistoryPage extends StatelessWidget {
  final List<Map<String, String>> foods;

  HistoryPage({required this.foods});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food History'),
        backgroundColor: primaryColor,
      ),
      body: ListView.builder(
        itemCount: foods.length,
        itemBuilder: (context, index) {
          return ListTile(
            
            title: Text(foods[index]['name']!),
            subtitle: Text('Added on: ${foods[index]['date']}'),
          );
        },
      ),
    );
  }
}

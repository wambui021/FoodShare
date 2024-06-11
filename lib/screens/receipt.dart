import 'package:flutter/material.dart';
import 'package:foodshare/configs/constants.dart';

class ReceiptPage extends StatelessWidget {
  final List<Map<String, String>> claimedItems;

  ReceiptPage({this.claimedItems = const []});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receipt'),
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: claimedItems.length,
          itemBuilder: (context, index) {
            final item = claimedItems[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      item['foodImage']!,
                      height: 60,
                      width: 60,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Food: ${item['foodName']}',
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Hotel: ${item['hotelName']}',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Closing Hours: ${item['closingHours']}',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
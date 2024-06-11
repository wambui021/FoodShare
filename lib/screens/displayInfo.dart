import 'package:flutter/material.dart';
import 'package:foodshare/views/customText.dart';
import 'package:foodshare/configs/constants.dart';

class HotelCard extends StatelessWidget {
  final Map<String, String> hotel;
  final VoidCallback onDelete;

  HotelCard({required this.hotel, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText(
                label: "Name: ${hotel['name']}",
                fontSize: 18,
                labelColor: Colors.white,
              ),
              customText(
                label: "Location: ${hotel['location']}",
                fontSize: 16,
                labelColor: Colors.white,
              ),
              customText(
                label: "Closing Hours: ${hotel['closingHours']}",
                fontSize: 16,
                labelColor: Colors.white,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  icon: Icon(Icons.delete, color: Colors.redAccent),
                  onPressed: onDelete,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

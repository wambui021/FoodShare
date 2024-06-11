import 'package:flutter/material.dart';
import 'package:foodshare/views/customButton.dart';
import 'package:foodshare/views/customTextfield.dart';

class AddHotelPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController closingHoursController = TextEditingController();
  final TextEditingController contactsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Hotel'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            customTextField(
              userFieldController: nameController,
              hint: "Hotel Name",
              icon: Icons.hotel,
            ),
            SizedBox(height: 20),
            customTextField(
              userFieldController: locationController,
              hint: "Location",
              icon: Icons.location_city,
            ),
            SizedBox(height: 20),
            customTextField(
              userFieldController: closingHoursController,
              hint: "Closing Hours"
              ,
            ),
            SizedBox(height: 20),
            customTextField(
              userFieldController: contactsController,
              hint: "contacts"
              ,
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                buttonLabel: "Add Hotel",
                action: () {
                  
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

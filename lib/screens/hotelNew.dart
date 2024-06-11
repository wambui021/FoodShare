import 'package:flutter/material.dart';
import 'package:foodshare/configs/constants.dart';
import 'package:foodshare/views/customButton.dart';
import 'package:foodshare/views/customTextfield.dart';

class NewFoodPage extends StatefulWidget {
  @override
  _NewFoodPageState createState() => _NewFoodPageState();
}

class _NewFoodPageState extends State<NewFoodPage> {
  final TextEditingController nameController = TextEditingController();
  String selectedImage = "assets/images/other.png"; 
  final List<String> foodImages = [
    "assets/images/other.png",
    "assets/images/pizza.png",
    "assets/images/burger.png",
      "assets/images/beef.png",
    "assets/images/rice.png",
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Food Item'),
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            customTextField(
              userFieldController: nameController,
              hint: "Food Name",
            ),
            SizedBox(height: 20),
            DropdownButton<String>(
              value: selectedImage,
              items: foodImages.map((String imagePath) {
                return DropdownMenuItem<String>(
                  value: imagePath,
                  child: Row(
                    children: [
                      Image.asset(imagePath, width: 50, height: 50),
                      SizedBox(width: 10),
                      Text(imagePath.split('/').last.split('.').first),
                    ],
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedImage = newValue!;
                });
              },
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                buttonLabel: "Add Food",
                action: () {
                 
                  Navigator.pop(context);
                },
                color: appOrangeColor,
                textColor: appwhiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

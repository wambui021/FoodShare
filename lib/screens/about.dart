import 'package:flutter/material.dart';
import 'package:foodshare/configs/constants.dart';

class AboutsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        backgroundColor:primaryColor,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Community Food Sharing',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: appOrangeColor, 
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Welcome to FoodShare, your one-stop destination for sharing food within the community. Our mission is to provide a platform for people to share surplus food, ensuring that no one in our community goes hungry. We believe in sustainable and ethical food sharing practices.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey.shade800, 
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Terms and Conditions:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: appOrangeColor,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '1. All food shared must be safe for consumption and adhere to local food safety regulations.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.grey.shade800, 
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '2. FoodShare is not responsible for the quality of food shared. Participants must ensure food is fresh and properly stored.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.grey.shade800, 
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  '3. Be respectful and considerate to other community members when sharing food.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.grey.shade800, 
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Contact Us:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: appOrangeColor,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Address: Tsavo Street, City, Nairobi',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey.shade800, 
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Phone: +254 745881266',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey.shade800, 
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Email: info@foodshare.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey.shade800, 
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

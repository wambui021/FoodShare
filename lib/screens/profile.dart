import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodshare/configs/constants.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'), 
        centerTitle: true, 
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 10),
              const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('/images/personIcon.png'),
              ),
              const SizedBox(height: 10),
              itemProfile('Username ', 'Gloria', CupertinoIcons.person),
              const SizedBox(height: 5),
              itemProfile('Phone', '0745881266', CupertinoIcons.phone),
              const SizedBox(height: 5),
              itemProfile(
                  'Address', '116, kericho', CupertinoIcons.location),
              const SizedBox(height: 5),
              itemProfile(
                  'Email', 'gloriachebet024@gmail.com', CupertinoIcons.mail),
        
              const SizedBox(
                height: 10,
              ),
              SizedBox(
               // width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(20),
                      backgroundColor:  appOrangeColor ,
                      
                    ),
                    child: const Text( 'Edit Profile',style: TextStyle(color: Colors.black),)
                    ),
        
              )
            ],
          ),
        ),
      ),
    );
  }
}


itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                offset: Offset(0, 4),
                color: Colors.blueGrey,
                spreadRadius: 2,
                blurRadius: 6)
          ]),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
       
        tileColor: Colors.white,
      ),
    );
  }

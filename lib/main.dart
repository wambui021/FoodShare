import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:foodshare/screens/dashboardNav.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp();

  runApp(GetMaterialApp(
    home: Dashboard(),
    initialRoute: "/",
    debugShowCheckedModeBanner: false,
  ));
}

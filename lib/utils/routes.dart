

import 'package:foodshare/screens/about.dart';
import 'package:foodshare/screens/home.dart';
import 'package:foodshare/screens/login.dart';
import 'package:foodshare/screens/profile.dart';
import 'package:foodshare/screens/receipt.dart';
import 'package:foodshare/screens/registration.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class Routes {
  static var routes = [
    GetPage(name: "/", page: () => Login()),
    GetPage(name: "/register", page: () => RegistrationPage()),
    GetPage(name: "/homepage", page: () => HomePage()),
    GetPage(name: "/receipt", page: () => ReceiptPage()),
    GetPage(name: "/profile", page: () => ProfilePage()),
    GetPage(name: "/about", page: () =>AboutsPage()),
  ];
 
}

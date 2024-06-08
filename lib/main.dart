
import 'package:flutter/material.dart';
import 'package:foodshare/screens/dashboardNav.dart';

import 'package:get/get.dart';

void main() {
  //Get.put(CurrentUserController());
  runApp(GetMaterialApp(
   
    home: Dashboard(),
    initialRoute: "/",
    debugShowCheckedModeBanner: false,
    //getPages: Routes.routes,
  ));
}

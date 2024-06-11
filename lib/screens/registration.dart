import 'package:flutter/material.dart';
import 'package:foodshare/configs/constants.dart';
import 'package:foodshare/views/customButton.dart';
import 'package:foodshare/views/customText.dart';
import 'package:foodshare/views/customTextfield.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            '/images/background.png', 
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              SizedBox(height: 10),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(30),
                  padding: const EdgeInsets.all(40.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(70),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("/images/fsLogo.png", height: 120),
                              customText(
                                label: "REGISTER",
                                labelColor: appBlackColor,
                                fontSize: 20,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        customTextField(
                          userFieldController: nameController,
                          icon: Icons.person,
                          hint: "Name",
                        ),
                        SizedBox(height: 10),
                        customTextField(
                          userFieldController: emailController,
                          icon: Icons.email,
                          hint: "Email",
                        ),
                        SizedBox(height: 10),
                        customTextField(
                          userFieldController: phoneNumberController,
                          icon: Icons.phone,
                          hint: "Phone Number",
                        ),
                        SizedBox(height: 10),
                        customTextField(
                          userFieldController: addressController,
                          icon: Icons.home,
                          hint: "Address",
                        ),
                        SizedBox(height: 10),
                        customTextField(
                          userFieldController: passwordController,
                          icon: Icons.lock,
                          hint: "Password",
                          hideText: true,
                          isPassword: true,
                        ),
                        SizedBox(height: 10),
                        customTextField(
                          userFieldController: confirmPasswordController,
                          icon: Icons.lock,
                          hint: "Confirm Password",
                          hideText: true,
                          isPassword: true,
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: SizedBox(
                            width: 150,
                            child: CustomButton(
                              buttonLabel: "Register",
                              action: () {
                               
                                print("Register button pressed");
                              },
                              color: appOrangeColor,
                              textColor: appwhiteColor,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: Row(
                            children: [
                             customText(label: "Already have an account?"),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          child: customText(
                            label: "Login here",
                            
                            onTap:gotoLogin ,
                            labelColor: primaryColor,
                          ),
                        ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  void gotoLogin() {
    Get.offAllNamed("/Login");
  }
}

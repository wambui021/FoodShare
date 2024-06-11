import 'package:flutter/material.dart';
import 'package:foodshare/configs/constants.dart';
import 'package:foodshare/views/customButton.dart';
import 'package:foodshare/views/customText.dart';
import 'package:foodshare/views/customTextfield.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Login extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String selectedRole = "User";

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
                  height: 40,
                  padding: const EdgeInsets.all(60.0),
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
                                label: "WELCOME BACK",
                                labelColor: appBlackColor,
                                fontSize: 20,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        customTextField(
                          userFieldController: emailController,
                          icon: Icons.email,
                          hint: "Email",
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ChoiceChip(
                              label: customText(
                                label: "User",
                                labelColor: selectedRole == "User"
                                    ? appwhiteColor
                                    : appBlackColor,
                              ),
                              selected: selectedRole == "User",
                              onSelected: (selected) {
                                setState(() {
                                  selectedRole = "User";
                                });
                              },
                              selectedColor: primaryColor,
                            ),
                            ChoiceChip(
                              label: customText(
                                label: "Admin",
                                labelColor: selectedRole == "Admin"
                                    ? appwhiteColor
                                    : appBlackColor,
                              ),
                              selected: selectedRole == "Admin",
                              onSelected: (selected) {
                                setState(() {
                                  selectedRole = "Admin";
                                });
                              },
                              selectedColor: primaryColor,
                            ),
                            ChoiceChip(
                              label: customText(
                                label: "Hotel",
                                labelColor: selectedRole == "Hotel"
                                    ? appwhiteColor
                                    : appBlackColor,
                              ),
                              selected: selectedRole == "Hotel",
                              onSelected: (selected) {
                                setState(() {
                                  selectedRole = "Hotel";
                                });
                              },
                              selectedColor: primaryColor,
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: SizedBox(
                            width: 150,
                            child: CustomButton(
                              buttonLabel: "Login",
                              action: () {
                                gotoHome();
                              },
                              color: appOrangeColor,
                              textColor: appwhiteColor,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            customText(label: "No account yet? "),
                            GestureDetector(
                              onTap: gotoRegister, 
                              child: customText(
                                label: "Register here",
                                labelColor: primaryColor,
                              ),
                            ),
                          ],
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

  void gotoHome() {
    Get.offAllNamed("/homePage");
  }

  void gotoRegister() {
    Get.offAllNamed("/register");
  }
}

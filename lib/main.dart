import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/custombutton.dart';
import 'package:flutter_application_1/customtext.dart';
import 'package:flutter_application_1/customtextfield.dart';
// ignore: unused_import
import 'package:get/get_connect/http/src/utils/utils.dart';


void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Customtext(
            label: "DU App",
            labelColor: appWhite,
            fontsize: 28, fontWeight: FontWeight.bold,
            
          ),
        ),
        backgroundColor: primaryColor,
        foregroundColor: appWhite,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/daystarrrrlogo.png",
                    height: 80,
                    width: 80,
                  ),
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Customtext(
                      label: "Login Screen",
                      fontsize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Customtext(
                    label: "Username",
                    labelColor: Colors.blue, fontWeight: FontWeight.bold,
                  ),
                ),
                CustomTextField(
                    customTextFieldController: usernameController,
                    hintText: "Enter your username",
                    prefixIcon: const Icon(Icons.person)),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Customtext(label: "Password",labelColor: Colors.blue, fontWeight:FontWeight.bold ),
                ),
                CustomTextField(
                  customTextFieldController: passwordController,
                  hintText: "Enter your password",
                  prefixIcon: const Icon(Icons.lock),
                  obscuredPassword: true,
                  isPassword: true,
                ),
                const CustomTextButton(
                  buttonName: "Log In",
                  color: Colors.blue,
                  textColor: Colors.white,
                )
              ]),
        ),
      ),
    );
  }
}
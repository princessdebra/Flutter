// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constant.dart';
import 'package:flutter_application_1/views/custombutton.dart';
import 'package:flutter_application_1/customtext.dart';
import 'package:flutter_application_1/customtextfield.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title:  'Registration Screen',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: RegistrationScreen(),
     
    
    );
  }
}

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController _firstnameController = TextEditingController();
  TextEditingController _secondnameController = TextEditingController();
  TextEditingController _phonenumberController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _reenterpasswordController = TextEditingController();

  bool isChecked = false; // Initialize isChecked to false

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Customtext(
            label: "NOTE",
            labelColor: Color.fromARGB(255, 244, 108, 154),
            fontsize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  "assets/images/Notes icon.jpeg",
                  height: 80,
                  width: 80,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Customtext(
                  label: "Registration Screen",
                  fontsize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Customtext(
                  label: 'Firstname',
                  labelColor: Color.fromARGB(255, 244, 108, 154),
                  fontWeight: FontWeight.bold),
              SizedBox(height: 12),
              CustomTextField(
                customTextFieldController: _firstnameController,
                hintText: "Enter your firstname",
                prefixIcon: const Icon(Icons.person),
              ),
              Customtext(
                  label: 'Second name',
                  labelColor: Color.fromARGB(255, 244, 108, 154),
                  fontWeight: FontWeight.bold),
              SizedBox(height: 12),
              CustomTextField(
                customTextFieldController: _secondnameController,
                hintText: "Enter your second name",
                prefixIcon: const Icon(Icons.person),
              ),
              Customtext(
                  label: 'Phone number',
                  labelColor: Color.fromARGB(255, 244, 108, 154),
                  fontWeight: FontWeight.bold),
              SizedBox(height: 12),
              CustomTextField(
                customTextFieldController: _phonenumberController,
                hintText: "something of this sort 0712345677",
                prefixIcon: const Icon(Icons.phone),
              ),
              Customtext(
                  label: 'Email',
                  labelColor: Color.fromARGB(255, 244, 108, 154),
                  fontWeight: FontWeight.bold),
              SizedBox(height: 12),
              CustomTextField(
                customTextFieldController: _emailController,
                hintText: "Enter your email",
                prefixIcon: const Icon(Icons.email),
              ),
              Customtext(
                  label: 'Password',
                  labelColor: Color.fromARGB(255, 244, 108, 154),
                  fontWeight: FontWeight.bold),
              SizedBox(height: 12),
              CustomTextField(
                customTextFieldController: _passwordController,
                hintText: "Enter your password",
                prefixIcon: const Icon(Icons.lock),
                obscuredPassword: true,
                isPassword: true,
              ),
              Customtext(
                  label: 'Re enter Password',
                  labelColor: Color.fromARGB(255, 244, 108, 154),
                  fontWeight: FontWeight.bold),
              SizedBox(height: 12),
              CustomTextField(
                customTextFieldController: _reenterpasswordController,
                hintText: "Re enter your password",
                prefixIcon: const Icon(Icons.lock),
                obscuredPassword: true,
                isPassword: true,
              ),
              CustomTextButton(
                buttonName: "Register",
                color: Color.fromARGB(255, 244, 108, 154),
                textColor: Colors.white,
                action: navigateToDashboard,
              ),
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  const Text("I have read and I agree to the terms and conditions"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
   void navigateToDashboard(){
    Get.toNamed("/dashboardscreen");
  }
}

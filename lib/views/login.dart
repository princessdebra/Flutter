import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constant.dart';
import 'package:flutter_application_1/views/custombutton.dart';
import 'package:flutter_application_1/customtext.dart';
import 'package:flutter_application_1/customtextfield.dart';
import 'package:get/get.dart';
// ignore: unused_import
import 'package:get/get_connect/http/src/utils/utils.dart';


//

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Customtext(
            label: "NOTEPAD",
            labelColor: appWhite,
            fontsize: 28, fontWeight: FontWeight.bold,
            
          ),
        ),
        backgroundColor: Color.fromARGB(255, 244, 108, 154),
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
                    "assets/images/Notes icon.jpeg",
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
                
                Customtext
                (label: "Welcome back you!", 
                fontsize: 30,
                fontWeight: FontWeight.normal, labelColor: const Color.fromARGB(255, 244, 108, 154),),

                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Customtext(
                    label: "Username",
                    labelColor: Color.fromARGB(255, 244, 108, 154), fontWeight: FontWeight.bold,
                  ),
                ),
                CustomTextField(
                    customTextFieldController: usernameController,
                    hintText: "Enter your username",
                    prefixIcon: const Icon(Icons.person)),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Customtext(label: "Password",labelColor: Color.fromARGB(255, 244, 108, 154) , fontWeight:FontWeight.bold ),
                ),
                CustomTextField(
                  customTextFieldController: passwordController,
                  hintText: "Enter your password",
                  prefixIcon: const Icon(Icons.lock),
                  obscuredPassword: true,
                  isPassword: true,
                ),
                 CustomTextButton(
                  buttonName: "Log In",
                  color: Color.fromARGB(255, 244, 108, 154),
                  textColor: Colors.white,
                  action:navigateToDashboard,
                ),
                 Row(
                   children: [
                     GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context,'/Registrationscreen');
                      },
                      child:
                      const Customtext(
                        label: "Not a member?",
                        labelColor:Colors.black ,
                        fontWeight: FontWeight.bold,
                        fontsize: 16),),
               ] ),
                   ],
                 )
          
          ),
        ),
      
    );
  }
     void navigateToDashboard(){
    Get.toNamed("/dashboardscreen");       
  }
  
  }
  

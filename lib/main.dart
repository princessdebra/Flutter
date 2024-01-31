import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant.dart';
import 'package:flutter_application_1/customtext.dart';


void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    TextEditingController UsernameController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("login page"),
        backgroundColor: primaryColor,
        foregroundColor: appWhite,
      ),
      // ignore: prefer_const_constructors
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50, 30, 50,30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("/images/logodaystar.jpeg",),
              ],
            ),
          // ignore: prefer_const_constructors
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:const [ Customtext(label: "Login Screen", labelColor: primaryColor, fontsize: 30)]),
         SizedBox(height: 20,),
         const Customtext(
            label: 'Username',
          ),
          TextField(
            controller: UsernameController,
          ),
          const Customtext(label: 'Password',),
        ]),
      ),
    );
  }
}
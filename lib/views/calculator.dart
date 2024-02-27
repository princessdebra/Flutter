// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Controller/calculatorcontroller.dart';
import 'package:flutter_application_1/customtext.dart';
import 'package:flutter_application_1/customtextfield.dart';
import 'package:flutter_application_1/views/custombutton.dart';
import 'package:flutter_application_1/customtextfield.dart';
import 'package:get/get.dart';



class Calculator extends StatelessWidget{
  TextEditingController num1controller = TextEditingController();
  TextEditingController num2controller = TextEditingController();

  CalculatorController calculatorController= Get.put(CalculatorController());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomTextField(customTextFieldController: num1controller),
              CustomTextField(customTextFieldController: num2controller),
              
              //CustomTextButton(buttonName: "Calculate"),
              ElevatedButton(onPressed: (){
                double a = double.parse(num1controller.text);
                double b = double.parse(num2controller.text);
                String name = num2controller.text;
                calculatorController.updateValues(a,b);

                 double s = a + b;
                 calculatorController.updateValues(a, b);
                 calculatorController.updateSum(s);  
               
               
                },
               child: Text("Calculate")),
              Obx(()=> Customtext(label: "Hi, ${calculatorController.name} sum of ${calculatorController.a} and ${calculatorController.b} is ${calculatorController.sum} ", fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constant.dart';
import 'package:flutter_application_1/pag/roots.dart';
import 'package:flutter_application_1/views/calculator.dart';
import 'package:flutter_application_1/views/custombutton.dart';
import 'package:flutter_application_1/customtext.dart';
import 'package:flutter_application_1/customtextfield.dart';
import 'package:get/get.dart';
// ignore: unused_import
import 'package:get/get_connect/http/src/utils/utils.dart';


void main() {
  runApp(GetMaterialApp(
    initialRoute: '/',

    debugShowCheckedModeBanner: false,
    getPages: Routes.routes,
  ));
}


    
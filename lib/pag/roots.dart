import 'package:flutter_application_1/views/dad.dart';
import 'package:flutter_application_1/views/login.dart';
import 'package:flutter_application_1/views/reg.dart';
import 'package:get/get.dart';

class Routes{
  static var routes=[
    GetPage(name: '/',page: ()=>Login()),
     GetPage(name: '/Registrationscreen',page: ()=>RegistrationScreen()),
    GetPage(name: '/dashboardscreen',page: ()=>DashboardScreen()),
  ];
}
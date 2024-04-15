import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:medicine/controller/biniding.dart';
import 'package:medicine/controller/local/locale_controller.dart';
import 'package:medicine/controller/local/locale_map.dart';
import 'package:medicine/controller/token.dart';
import 'package:medicine/view/pages/All_medicine_page.dart';
import 'package:medicine/view/pages/after_login.dart';
import 'package:medicine/view/pages/login.dart';
import 'package:medicine/view/pages/medicines_order.dart';
import 'package:medicine/view/pages/details.dart';
import 'package:medicine/view/pages/home.dart';
import 'package:medicine/view/pages/medicines.dart';
import 'package:medicine/view/pages/order.dart';
import 'package:medicine/view/pages/register.dart';
import 'package:medicine/view/pages/show_orders.dart';
import 'package:medicine/view/pages/locale.dart';


void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My App ....',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      initialRoute: TokenStorage.getToken()=='' ? "/locale" : "/afterlogin",
      initialBinding: MyBiniding(),
      getPages: [
        GetPage(name: "/home", page: () => HomePage()),
        GetPage(name: "/medicines", page: () => MedicinesPage()),
        GetPage(name: "/details", page: () => DetailsPage()),
        GetPage(name: "/allmedicines", page: () => AllMedPage()),
        GetPage(name: "/orders", page: () => OrderPage()),
        GetPage(name: "/medicinesorder", page: () => MedicinesOrderPage()),
        GetPage(name: "/showorders", page: () => ShowOrdersPage()),
        GetPage(name: "/register", page: () => Register()),
        GetPage(name: "/login", page: () => Login()),
        GetPage(name: "/afterlogin", page: () => AfterLogin()),
         GetPage(name: "/locale", page: () => Locale()),

      ],
      translations: mylocal(),
     locale :Get.deviceLocale,

      
    );
  }
}

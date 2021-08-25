import 'package:app_get_contador/pages/01-contador/home_page.dart';
import 'package:app_get_contador/pages/02-ciclo_de_vida/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: HomePage(),
      home: SplashPage(),
    );
  }
}

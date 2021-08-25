import 'package:app_get_contador/pages/01-contador/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    //cargar información
    //Cargar configuración de app
    print("Iniciando onInit");
    super.onInit();
  }

  @override
  void onReady() {
    print("Iniciando onReady");
    _loadHome();
    super.onReady();
  }

  @override
  void onClose() {
    print("Iniciando onClose");
    super.onClose();
  }

  _loadHome() async {
    await Future.delayed(
      Duration(milliseconds: 800),
      () {
        //Get.to(() => HomePage());

        /*  
       Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const HomePage(),
          ),
        ); */
        Get.offUntil(GetPageRoute(page: () => HomePage()), (route) => false);
      },
    );
  }
}

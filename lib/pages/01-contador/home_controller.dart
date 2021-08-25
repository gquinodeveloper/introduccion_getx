import 'package:app_get_contador/models/user_model.dart';
import 'package:app_get_contador/providers/user_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //instancias
  UserProvider _provider = UserProvider();

  int _counter = 0;
  int get counter => _counter;

  String dato = "";

  //Reactivos
  RxInt _counter2 = RxInt(3);
  RxInt get counter2 => _counter2;

  //Reactivos
  RxInt _counter3 = RxInt(5);
  RxInt get counter3 => _counter3;

  RxList<UserModel> _users = RxList<UserModel>([]);
  RxList<UserModel> get users => _users;

  @override
  void onInit() {
    _loadUsers();
    super.onInit();
  }

  @override
  void onReady() {
    /*  Get.dialog(
      AlertDialog(
        title: Text("Hola"),
        content: Text(dato),
      ),
    );

    Get.snackbar(
      "Message",
      "Estoy pintando un snack",
      colorText: Colors.white,
      duration: Duration(seconds: 10),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.cyan,
    ); */
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void increment() {
    _counter++;
    update(["contador1"]);
  }

  void increment2() {
    _counter2.value++;
  }

  void increment3() {
    _counter3.value++;
  }

  _loadUsers() async {
    try {
      users.value = await _provider.getUsers(page: 2);
    } on DioError catch (e) {
      Get.snackbar(
        "Message",
        e.toString(),
        colorText: Colors.white,
        duration: Duration(seconds: 10),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.cyan,
      );
    }
  }
}

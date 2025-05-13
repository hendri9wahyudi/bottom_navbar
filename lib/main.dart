import 'package:flutter/material.dart';
import 'package:flutter2/mainlayout.dart';
import 'package:get_storage/get_storage.dart';
import 'login.dart';
import 'package:get/get.dart';

void main() async {
  await GetStorage.init(); // Inisialisasi GetStorage
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _storage = GetStorage(); // Instance GetStorage

  @override
  Widget build(BuildContext context) {
    // Cek apakah user masih login
    final isLoggedIn = _storage.read('user') != null;

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      // Jika user masih login, arahkan ke HomePage, jika tidak, arahkan ke LoginPage
      home: isLoggedIn ? mainLayout() : LoginPage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login.dart';
import 'storage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _storageService = StorageService();
  bool temaDark = true;

  void gantiTema() {
    setState(() {
      temaDark = !temaDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: temaDark ? Colors.white : Colors.black38,
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              _storageService.clearUser();
              Get.offAll(() => LoginPage());
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            const CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage("images/pp.jpg"),
          ),
            Text('Welcome, ${_storageService.getUser()}!',
                style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: gantiTema,
              child: const Text('Ganti Tema'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'storage.dart';

class HomePage extends StatelessWidget {
  final _storageService = StorageService();
  final bool temaDark;
  final VoidCallback gantiTema;

  HomePage({
    Key? key,
    required this.temaDark,
    required this.gantiTema,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: temaDark ? Colors.yellow : Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Selamat Datang, ${_storageService.getUser()} !',
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

import 'package:flutter/material.dart';
import 'package:flutter2/pass.dart';
import 'package:get/get.dart';
import 'custom.dart';
import 'storage.dart';
import 'auth.dart';
import 'splash_screen.dart';

class LoginPage extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _authService = AuthService();
  final _storageService = StorageService();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(
              controller: _emailController,
              label: 'Username',
            ),
            PasswordWidget(controller: _passwordController,),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final email = _emailController.text;
                final password = _passwordController.text;
                if (await _authService.login(email, password)) {
                  _storageService.saveUser(email);
                  Get.offAll(() => SplashScreen());
                } else {
                  Get.snackbar('Error', 'Login Gagal');
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}


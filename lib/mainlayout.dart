import 'package:flutter/material.dart';
import 'package:flutter2/bottomnav.dart';
import 'package:flutter2/home.dart';
import 'package:flutter2/message.dart';
import 'package:flutter2/profile.dart';
import 'package:get/get.dart';
import 'login.dart';
import 'storage.dart';

class mainLayout extends StatefulWidget {
  const mainLayout({super.key});

  @override
  State<mainLayout> createState() => _mainLayoutState();
}

class _mainLayoutState extends State<mainLayout> {
  final _storageService = StorageService();
  int _selectedIndex = 0;
  bool temaDark = true;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void gantiTema() {
    setState(() {
      temaDark = !temaDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Daftar halaman, kirim temaDark dan fungsi gantiTema ke HomePage
    final List<Widget> _pages = [
      HomePage(
        temaDark: temaDark,
        gantiTema: gantiTema,
      ),
      MessagePage(
        temaDark: temaDark,
        gantiTema: gantiTema,
      ),
      ProfilePage(
        temaDark: temaDark,
        gantiTema: gantiTema,
      ),
      // Tambahkan halaman Message atau Profile di sini
    ];

    final List<String> _title = [
      'Home',
      'Message',
      'Profile'
    ];

    return Scaffold(
      backgroundColor: temaDark ? Colors.yellow : Colors.blue,
      appBar: AppBar(
        title: Text(_title[_selectedIndex]),

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
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNav(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

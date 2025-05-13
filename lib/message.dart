import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  final bool temaDark;
  final VoidCallback gantiTema;

  const MessagePage({
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
            Text('Ini Halaman Pesan',
            style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

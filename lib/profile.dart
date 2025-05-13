import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final bool temaDark;
  final VoidCallback gantiTema;
  final String name = "Hendri Wahyudi";
  final String role = "Mencoba hal baru &\nMemperbaiki masa lalu";
  final String bio = "S1 - Teknik Informatika\nFakultas Ilmu Komputer\nUniversitas Duta Bangsa\nSurakarta";
  final String bio2 = "Bejen, Kec. Karanganyar, Kab. karanganyar";
  final String bio3 = "083837333076";

  const ProfilePage({
    Key? key,
    required this.temaDark,
    required this.gantiTema,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: temaDark ? Colors.yellow : Colors.blue,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage("images/pp.jpg"),
              ),
              SizedBox(height: 20),
              Text(
                name,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              Text(
                role,
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              Divider(
                height: 40,
                color: Colors.black,
                thickness: 1,
                indent: 50,
                endIndent: 50,
              ),
              Text(
                "Pendidikan",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                bio,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                "Alamat",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                bio2,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                "Whatsapp",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                bio3,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

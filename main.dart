import 'package:flutter/material.dart';
import 'login_page.dart'; // Import halaman login

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashPage(), // Menampilkan SplashPage terlebih dahulu
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mengatur delay untuk berpindah ke halaman login
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()), // Navigasi ke LoginPage
      );
    });

    return Scaffold(
      body: Column(
        children: [
          // Bagian atas (Hijau Muda)
          Expanded(
            flex: 2,
            child: Container(
              color: Color(0xFFD9F99D), // Warna hijau muda
            ),
          ),
          // Bagian tengah (Hijau)
          Expanded(
            flex: 3,
            child: Container(
              color: Color(0xFF4CAF50), // Warna hijau standar
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Teks "PREDIKAD"
                    Text(
                      'PREDIKAD',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    // Teks "Presensi dan Siakad"
                    Text(
                      'Presensi dan Siakad',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Bagian bawah (Hijau Tua)
          Expanded(
            flex: 1,
            child: Container(
              color: Color(0xFF2E7D32), // Warna hijau tua
            ),
          ),
        ],
      ),
    );
  }
}
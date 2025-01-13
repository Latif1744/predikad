import 'package:flutter/material.dart';
import 'pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Tambahkan constructor dengan key

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashPage extends StatefulWidget { // Ubah ke StatefulWidget
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigateToLogin(); // Pindahkan logika navigasi ke method terpisah
  }

  void _navigateToLogin() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Bagian atas (Hijau Muda)
          Expanded(
            flex: 2,
            child: Container(
              color: const Color(0xFFD9F99D),
            ),
          ),
          // Bagian tengah (Hijau)
          Expanded(
            flex: 3,
            child: Container(
              color: const Color(0xFF4CAF50),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Logo (jika ada)
                    Image.asset(
                      'assets/images/logo.png',
                      height: 100,
                    ),
                    const Text(
                      'PREDIKAD',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
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
              color: const Color(0xFF2E7D32),
            ),
          ),
        ],
      ),
    );
  }
}

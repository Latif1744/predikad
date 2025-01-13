import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
        backgroundColor: const Color(0xFF347928), // Warna yang sama dengan halaman utama
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Bagian foto profil
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage("https://via.placeholder.com/100x100"),
              ),
            ),
            const SizedBox(height: 20),

            // Nama pengguna
            const Text(
              'Putri Nabila',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            // Informasi tambahan
            const Text(
              'Mahasiswa',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),

            // Detail profil
            const Text(
              'Detail Profil',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            // Daftar informasi
            const Text(
              'NIM: 123456789',
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              'Program Studi: Teknik Informatika',
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              'Email: putri.nabila@example.com',
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              'Telepon: +62 812-3456-7890',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Tombol untuk mengedit profil
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Logika untuk mengedit profil dapat ditambahkan di sini
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Fitur edit profil belum tersedia')),
                  );
                },
                child: const Text('Edit Profil'),
                style: ElevatedButton.styleFrom(
                  // primary: const Color(0xFF347928), // Warna tombol
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

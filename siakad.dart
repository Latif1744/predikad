import 'package:flutter/material.dart';

class SiakadPage extends StatelessWidget {
  const SiakadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SIAKAD'),
        backgroundColor: const Color(0xFF347928), // Warna yang sama dengan halaman utama
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Judul
            const Text(
              'Sistem Informasi Akademik',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            // Deskripsi
            const Text(
              'SIAKAD adalah sistem yang digunakan untuk mengelola data akademik mahasiswa, '
                  'mulai dari pendaftaran, absensi, nilai, hingga informasi lainnya.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Daftar fitur
            const Text(
              'Fitur SIAKAD:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            // Daftar fitur yang tersedia
            const Text(
              '- Melihat Jadwal Kuliah',
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              '- Melihat Nilai',
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              '- Mengisi KRS',
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              '- Melihat Informasi Dosen',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Tombol untuk mengakses fitur lebih lanjut
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Logika untuk mengakses fitur SIAKAD dapat ditambahkan di sini
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Fitur SIAKAD belum tersedia')),
                  );
                },
                child: const Text('Akses SIAKAD'),
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

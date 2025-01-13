import 'package:flutter/material.dart';
import 'daftarAbsensi.dart'; // Import DaftarAbsensi page

class AbsensiPage extends StatelessWidget {
  const AbsensiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF347928),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Navigasi kembali ke halaman sebelumnya
          },
        ),
        title: const Text('Absensi', style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'PRESENSI',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Putri Nabila',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'SENIN, 20 Nov 2024',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 16),
              AbsensiCard(
                mataKuliah: 'Pengolahan Citra Digital',
                dosen: 'Mulyadi, S.T., M.Eng',
                semester: 'SEMESTER 5',
                kelas: '3C',
              ),
              AbsensiCard(
                mataKuliah: 'Praktikum Pemrograman Mobile',
                dosen: 'Safriadi, S.T., M.Kom',
                semester: 'SEMESTER 5',
                kelas: '3C',
              ),
              AbsensiCard(
                mataKuliah: 'Keamanan Jaringan Komputer',
                dosen: 'M. Khadafi, ST, MT',
                semester: 'SEMESTER 5',
                kelas: '3C',
              ),
              AbsensiCard(
                mataKuliah: 'Bahasa Indonesia',
                dosen: 'Dra. Jamilah, Mpd',
                semester: 'SEMESTER 5',
                kelas: '3C',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AbsensiCard extends StatelessWidget {
  final String mataKuliah;
  final String dosen;
  final String semester;
  final String kelas;

  const AbsensiCard({
    Key? key,
    required this.mataKuliah,
    required this.dosen,
    required this.semester,
    required this.kelas,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the DaftarAbsensi page when the card is tapped
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DaftarAbsensiPage()),
        );
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mataKuliah,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    dosen,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    semester,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  kelas,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

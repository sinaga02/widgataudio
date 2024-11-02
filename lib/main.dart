import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RecorderScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RecorderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            // Bagian Tab Perekam dan Panggilan dengan spaceAround
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        'Perekam',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Container(
                        height: 2,
                        width: 60,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  // Membuat popup menu yang muncul ketika diklik
                  PopupMenuButton(
                    icon: Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        value: 'setting',
                        child: Text('Setting'),
                      ),
                    ],
                    onSelected: (value) {
                      if (value == 'setting') {
                        // Logika ketika setting dipilih
                        // Misalnya, navigasi ke halaman setting
                        print('Setting selected');
                      }
                    },
                  ),
                ],
              ),
            ),
            Spacer(),
            // Ikon Mikrofon
            Icon(
              Icons.mic_none,
              color: Colors.grey,
              size: 100,
            ),
            SizedBox(height: 16),
            Text(
              'Tidak ada rekaman',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            Spacer(),
            // Tombol Rekam
            Padding(
              padding: const EdgeInsets.only(bottom: 32.0),
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Halaman baru untuk "Panggilan"
class CallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Panggilan",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white, // Mengatur warna ikon back menjadi putih
        ),
      ),
      body: Center(
        child: Text(
          'Belum ada panggilan',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}

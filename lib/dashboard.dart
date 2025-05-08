import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard Screen"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Kembali ke layar sebelumnya
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Biar di tengah
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Kembali ke layar sebelumnya
              },
              child: const Text("cekout"),
            ),
            const SizedBox(height: 16), // Jarak antar tombol
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Kembali ke layar sebelumnya
              },
              child: const Text("Kembali"),
            ),
          ],
        ),
      ),
    );
  }
}
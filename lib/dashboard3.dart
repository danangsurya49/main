import 'package:flutter/material.dart';

class Dasboard3Screen extends StatefulWidget {
  const Dasboard3Screen({super.key});

  @override
  State<Dasboard3Screen> createState() => _Dasboard3ScreenState();
}

class _Dasboard3ScreenState extends State<Dasboard3Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UTS'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: const [
                Text('Hidup', style: TextStyle(fontSize: 18)),
                SizedBox(width: 8),
                Icon(Icons.whatshot_sharp, color: Colors.red),
                SizedBox(width: 8),
                Icon(Icons.whatshot, color: Colors.orange),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Hidup adalah perjuangan',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Aksi saat tombol login ditekan
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Tombol login ditekan')),
                );
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

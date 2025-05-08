import 'package:flutter/material.dart';
import 'cart.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil Saya')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                'assets/profile.jpg',
              ),
            ),
            const SizedBox(height: 16),

            const Text(
              'Muhammad Fikri Ihsanuddin',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            const Text(
              'Kingdariking@gmail.com',
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 24),

            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('Alamat'),
                      subtitle: Text('Surakarta'),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text('Nomor Telepon'),
                      subtitle: Text('0815183140185'),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.calendar_today),
                      title: Text('Tanggal Lahir'),
                      subtitle: Text('14 April 2005'),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CartScreen(jumlahBarang: 1),
                  ),
                );
              },
              icon: const Icon(Icons.shopping_cart_checkout),
              label: const Text('Lihat Keranjang & Checkout'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'cart.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int jumlahFollower = 0;
  int jumlahFollowing = 0;

  void tambahFollower() {
    setState(() {
      jumlahFollower++;
    });
  }

  void tambahFollowing() {
    setState(() {
      jumlahFollowing++;
    });
  }

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
              backgroundImage: AssetImage('assets\images\Rappa　　✦　　Icon.jpeg'),
            ),
            const SizedBox(height: 16),
            const Text(
              'danang surya putra',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'danangsurya49@gmail.com',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 24),

            // Follower & Following
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Follower',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('$jumlahFollower'),
                    IconButton(
                      icon: const Icon(Icons.person_add),
                      onPressed: tambahFollower,
                      tooltip: 'Tambah Follower',
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Following',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('$jumlahFollowing'),
                    IconButton(
                      icon: const Icon(Icons.group_add),
                      onPressed: tambahFollowing,
                      tooltip: 'Tambah Following',
                    ),
                  ],
                ),
              ],
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
                      subtitle: Text('082193852871'),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.calendar_today),
                      title: Text('Tanggal Lahir'),
                      subtitle: Text('08 juni 2003'),
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

import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  final int jumlahBarang;

  const CartScreen({super.key, required this.jumlahBarang});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  late int _jumlah;

  @override
  void initState() {
    super.initState();
    _jumlah = widget.jumlahBarang;
  }

  void _tambahBarang() {
    setState(() {
      _jumlah++;
    });
  }

  void _kurangiBarang() {
    if (_jumlah > 1) {
      setState(() {
        _jumlah--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    int totalHarga = 50000 * _jumlah;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Keranjang Belanja'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Barang dalam keranjang
            Card(
              elevation: 2,
              child: ListTile(
                leading: const Icon(Icons.shopping_bag),
                title: const Text('Kaos Polos'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Jumlah: $_jumlah'),
                    Row(
                      children: [
                        IconButton(
                          onPressed: _kurangiBarang,
                          icon: const Icon(Icons.remove_circle_outline),
                        ),
                        IconButton(
                          onPressed: _tambahBarang,
                          icon: const Icon(Icons.add_circle_outline),
                        ),
                      ],
                    ),
                  ],
                ),
                trailing: Text('Rp$totalHarga'),
              ),
            ),

            const Spacer(),

            // Tombol Checkout
            ElevatedButton.icon(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Checkout Berhasil'),
                    content: Text(
                        'Anda membeli $_jumlah barang dengan total Rp$totalHarga.\nTerima kasih telah berbelanja!'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              icon: const Icon(Icons.payment),
              label: const Text('Checkout'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 48),
              ),
            ),

            const SizedBox(height: 12),

            // Tombol Kembali
            OutlinedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
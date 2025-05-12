import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String username;
HomeScreen({required this.username});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("BIODATA"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(children: [Icon(Icons.person), Text("BIODATA")]),
          Text("NAMA : danang surya putra"),
          Text("NIM : 230101010"),
          Text("Kelas : SI 23A1"),
          Text("Prodi : Sistem Informasi"),
          Text("Hobi : Membaca buku"),
        ],
      ),
    );
}
}
import 'package:flutter/material.dart';

class dasboard2screen extends StatefulWidget {
  const dasboard2screen({super.key});

  @override
  State<dasboard2screen> createState() => _dasboard2State();
}

class _dasboard2State extends State<dasboard2screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('dashboard'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Text('dashboard'),
              Icon(Icons.dashboard),
              Icon(Icons.dashboard),
              Icon(Icons.person),
            ],
          ),
          Text('dashboard'),
          Text('dashboard'),
          ElevatedButton(
            onPressed: (){},
             child: Text("login"),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'username',
              hintText: 'enter your username'
              prefix: Icon(Icons.person),
              prefix: 
            ),
          )
        ],
      ),
    );
  }
}
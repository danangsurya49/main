import 'package:flutter/material.dart';

class login2screen extends StatefulWidget {
  const login2screen({super.key});

  @override
  State<login2screen> createState() => _login2State();
}

class _login2State extends State<login2screen> {
  bool statusPasword = true;
  bool statuswarna = true;
  tampilpassword() {
    setState(() {
      statusPasword = !statusPasword;
    });
  }

  gantiwarna() {
    setState(() {
      statuswarna = !statuswarna;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: statuswarna ? Colors.black : Colors.red,
      body: Column(
        children: [
          TextField(),
          TextField(
            obscureText: statusPasword,
            decoration: InputDecoration(
              labelText: 'password',
              hintText: 'enter your password',
              prefixIcon: Icon(Icons.lock),
              suffixIcon: IconButton(
                icon: Icon(
                  statusPasword ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () {
                  tampilpassword();
                },
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              gantiwarna();
            },
            child: Text('ganti warna'),
          ),
        ],
      ),
    );
  }
}

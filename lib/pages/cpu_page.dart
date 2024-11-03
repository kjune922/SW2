import 'package:flutter/material.dart';

class CpuPage extends StatelessWidget {
  const CpuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Container(
        width: 100,
        height: 100,
        color: Colors.blue,
      ),
    );
  }
}

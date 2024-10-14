import 'package:flutter/material.dart';

class TentangAplikasiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Aplikasi Katalog Buku Ini Dibuat Oleh Wida Monica Putri.'
            'Versi: 1.0.0',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}

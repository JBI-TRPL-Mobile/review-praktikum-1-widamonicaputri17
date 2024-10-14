import 'package:flutter/material.dart';

class DetailBukuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String> buku =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: Text(buku['Judul']!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              buku['Judul']!,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Penulis: ${buku['Penulis']}'),
            SizedBox(height: 20),
            Text(buku['Deskripsi']!),
            SizedBox(height: 10),
            Image.network(buku['Gambar']!),
          ],
        ),
      ),
    );
  }
}

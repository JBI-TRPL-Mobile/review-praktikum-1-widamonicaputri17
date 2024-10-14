import 'package:flutter/material.dart';
import 'package:template_project/pages/home_page.dart';
import 'package:template_project/pages/detail_buku_page.dart';
import 'package:template_project/pages/tentang_aplikasi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Katalog Buku',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/detail': (context) => DetailBukuPage(),
        '/tentang': (context) => TentangAplikasiPage(),
      },
    );
  }
}
